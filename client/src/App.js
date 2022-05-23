import './App.css';
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
// import {useEffect, useContext} from "react";

// import {UserContext} from "./context/user";
// import Home from "./components/Home";
// import Header from "./components/Header";
// import Signin from './components/Signin';
// import Signup from './components/Signup';
// import Signout from './components/Signout';
// import Profile from './components/Profile';
// import Navbar from "./components/Navbar";
// import Notification from "./components/Notification";

// import HikeCard from "./components/HikeCard";
// import HikesContainer from "./containers/HikesContainer";
// import PlanForm from "./components/PlanForm";
// import PlanCard from "./components/PlanCard";
// import PlansContainer from "./containers/PlansContainer";

function App() {
  // const {getCurrentUser} = useContext(UserContext);

  // useEffect(() => {
  //   getCurrentUser()
  // }, [])

  return (
    <div className="App">

      Here!
      {/* <Router>
        <Notification/>
        <Navbar />
        <Header slogan="Hike up!" />
        <Routes>
          <Route path="/plans/new">
            <PlanForm />
          </Route> */}
          {/* <Route path="/plans/:id">
            <PlanCard />
          </Route>
          <Route path="/plans">
            <PlansContainer />
          </Route>
          <Route path="/hikes/:id">
            <HikeCard />
          </Route>
          <Route path="/hikes">
            <HikesContainer />
          </Route>
          <Route path="/signin">
            <Signin />
          </Route>
          <Route path="/profile">
            <Profile />
          </Route>
          <Route path="/signup">
            <Signup />
          </Route>
          <Route path="/signout">
            <Signout />
          </Route>
          <Route path="/">
            <Home />
          </Route>
        </Routes>
      </Router> */}
    </div>
  );
}

export default App;
