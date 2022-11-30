import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";

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
      <h1>HOME</h1>
    </div>
  );
}

export default App;
