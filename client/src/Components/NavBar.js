import { NavLink } from "react-router-dom";
import {useHistory} from 'react-router-dom'

function NavBar({ setUser, user }) {
    const history = useHistory()

    function handleLogoutClick(){
        fetch("/logout", {
            method: "DELETE"
        }).then((res => {
            if (res.ok){
                setUser(null)
                history.push("/")
            }
        }))
    }

  return (
    user ? (<nav>
      <NavLink exact to="/">
        Home
      </NavLink>
      <NavLink exact to="/Clothing">
        Add Clothing
      </NavLink>
      <NavLink exact to="/Closet">
        My Closet
      </NavLink>
      <NavLink exact to="/Outfits">
        My Outfits
      </NavLink>
      <NavLink exact to="/Account">
        Account
      </NavLink>
      <button onClick={handleLogoutClick} className="logoutButton">Logout</button>
    </nav> ) :
    (<nav>
    <NavLink exact to="/">
        Home
      </NavLink>
        <NavLink exact to="/Login">
            Log In
        </NavLink>
        <NavLink exact to="/Signup">
        Signup
      </NavLink>
    </nav>)

)};


export default NavBar;