import "./css/App.css";
import Favorites from "./pages/Favorites";
import Home from "./pages/Home";
import { Routes, Route } from "react-router-dom";
import { MovieProvider } from "./contexts/MovieContext";
import NavBar from "./component/NavBar";

function App() {
  return (
    <MovieProvider>
      <NavBar />
      <main className="main-content">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/favorites" element={<Favorites />} />
        </Routes>
      </main>
    </MovieProvider>
  );
}

export default App;

// Practice 1
// import './App.css'
// import MovieCard from './component/MovieCard'

// function App() {
//   // const movieNumber = 1;
//   return (
//     <>
//     {movieNumber == 1 ? (
//       <MovieCard movie={{ title: "Movie Name 1", date: "2020" }} />
//     ) : (
//       <MovieCard movie={{ title: "Movie Name 2", date: "2019" }} />
//       )}
//     </>
//   )
// }

// // test function only
// // function Text() {
// //   return (
// //     <div>Hello world</div>
// //   )
// // }

// export default App