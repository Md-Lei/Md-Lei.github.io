import '../css/Home.css'
import MovieCard from "../component/MovieCard";
import { useState, useEffect } from "react";
import { searchMovies, getPopularMovies } from '../services/api';

function Home() {
    const [searchQuery, setSearchQuery] = useState("");
    const [movies, setMovies] = useState([]);
    const [error, setError] = useState(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const loadPopularMovies = async () => {
            try {
                const popularMovies = await getPopularMovies()
                setMovies(popularMovies)
            } catch (err) {
                console.log(err)
                setError("Failed to Load")
            }
            finally {
                setLoading(false)
            }
        }

        loadPopularMovies()
    }, [])


    // Hardcoded list of Movies
    // const movies = [
    //     { id: 1, title: "Spiderman", date: "2026" },
    //     { id: 2, title: "Everything Everywhere All at Once ", date: "2022" },
    //     { id: 3, title: "The Substance", date: "2024" },
    //     { id: 4, title: "Turning Red", date: "2019" },
    // ];

    const searchBox = async (e) => {
        e.preventDefault()
        if (!searchQuery.trim()) return

        setLoading(true)
        try {
            const searchResults = await searchMovies(searchQuery)
            setMovies(searchResults)
            setError(null)
        } catch (err) {
            console.log(err)
            setError("Failed to search movies")
        } finally {
            setLoading(false)
        }

        setSearchQuery("")
    };

    return (
        <div className="home">
            <form onSubmit={searchBox} className="search-form">
                <input
                    type="text"
                    placeholder="Search Movie Here"
                    className="search-input"
                    value={searchQuery}
                    onChange={(e) => setSearchQuery(e.target.value)}
                />
                <button type="submit" className="search-button">Find</button>
            </form>
            {loading ? (
                <div className="loading">Loading...</div>
            ) : (
                <div className="movies-grid">
                    {movies.map((movie) => (
                        <MovieCard movie={movie} key={movie.id} />
                    ))}
                </div>
            )}
        </div>
    );
}

export default Home;