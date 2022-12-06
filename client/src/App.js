import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Signup from "./Components/Signup";
import Home from "./Components/Home";
import Login from "./Components/Login";
import NavBar from "./Components/NavBar";

function App() {

  const [user, setUser] = useState(null);
 

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => {
          setUser(user)
        });
      }
    });
  }, []);
  
  return (
    <div>
      <BrowserRouter>
      <div className="App">
        <NavBar user={user} setUser={setUser}/>
        <Switch>

        <Route exact path="/">
           <Home user={user}/>
        </Route>

        <Route exact path="/login">
            <Login setUser={setUser}/>
          </Route>

          <Route exact path="/signup">
            <Signup setUser={setUser}/>
          </Route>
        
        </Switch>
      </div>
    </BrowserRouter>
    </div>
  );
}

export default App;
