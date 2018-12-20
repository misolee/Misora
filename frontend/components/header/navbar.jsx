import React from "react";
import HeaderContainer from "./header_container";
import { Link } from "react-router-dom";

class NavBar extends React.Component {
	render() {
		return(
			<div className="full-navbar">
				<div className="pinkBorderHeader" />
				<div className="navBar">
					<div className="searchBar-div">
						<input className="searchBar" type="text" placeholder="Search" />
					</div>
					<Link className="mainlogo" to='/' />
					<HeaderContainer />
				</div>
			</div>
		)
	}
};

export default NavBar;
