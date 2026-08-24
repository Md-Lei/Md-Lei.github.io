import '../css/Navbar.css'
import { Link } from "react-router-dom"

function NavBar() {
    return <nav className="navbar">
        <div className="navbar-brand">
            <Link to="/">iWantMovie</Link>
        </div>
        <div className="navbar-links">
            <Link to="/" className="nav-link"> Home Page</Link>
            <Link to="/favorites" className="nav-link"> Favorite Page</Link>
        </div>
    </nav>
}

export default NavBar