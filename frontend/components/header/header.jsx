import React from "react";
import { Link } from 'react-router-dom';

const Header = (props) => {

  const welcomeMessage = props.currentUser ? (
    <div className="welcomeMessageWithButton">
      <h3 className="welcomeMessage"> Hi, {
        props.currentUser.firstName[0].toUpperCase() + props.currentUser.firstName.substring(1, props.currentUser.firstName.length)
      } <i id="beautifulHeart" className="fas fa-heart" /><i id="fa-caret-down1" className="fas fa-caret-down"></i></h3>
    </div>) : (
      <div className="welcomeMessageWithButton" tabIndex="1">
        <h3 className="welcomeMessage">Hi, Beautiful
          <i id="beautifulHeart" className="fas fa-heart" />
          <i id="fa-caret-down2" className="fas fa-caret-down"/>
        </h3>
        <div className="signInsignOutButton">
          <button className="signInsignOutButton" onClick={() => props.openModal("login")}>Sign In</button>
          <div className="or">or</div>
          <button className="signInsignOutButton" onClick={() => props.openModal("signup")}>Register</button>
        </div>
      </div>
    );
    
  const signout = props.currentUser ? (
    <div>
      <div className="break-line2" />
      <button id="logout-button" className="dropdown-button" onClick={props.logout}>Logout</button>
    </div>
  ) : (
    null
  )

  const dropdown = (
    <div className="hidden-dropdown">
      <div className="dropdown-flex">
        <button className="dropdown-button">Profile</button>
        <button className="dropdown-button">Beauty Insider</button>
        <button className="dropdown-button">Lists</button>
        <button className="dropdown-button">Account</button>
        <button className="dropdown-button">Orders</button>
      </div>
      { signout }
    </div>
  )

  return (
    <div className="header">
      <div className="welcome-message-with-dropdown" tabIndex="1">
        { welcomeMessage }
        { dropdown }
      </div>
      <div className="break">
        <div className="middle-break" />
        <div className="middle-break2" />
      </div>
        <div className="bagIcons">
          <i className="fas fa-heart" />
          <Link to='/basket'>
            <i className="fas fa-shopping-bag" />
          </Link>
        </div>
    </div>
  );
}

export default Header;