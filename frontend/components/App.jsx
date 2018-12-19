import React from "react";
import { Route, Switch, Redirect } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import Home from './home';
import LogInSignUpModal from "./modal/login_signup_modal";
import NavBar from "./header/navbar";
import UnderNavBar from "./header/under_navbar";
import Footer from "./footer/footer";
import AllProducts from "./products/all_product_container";
import AllMakeup from "./products/makeup_container";
import AllSkincare from "./products/skincare_container";
import AllHair from "./products/hair_container";
import AllBathandBody from "./products/bath_and_body_container";
import AllFragrance from "./products/fragrance_container";
import ProductShow from "./products/product_show/product_show_container";
import Basket from "./basketItems/basket_container";

const App = () => (
	<div className="page">
		<NavBar />
		<UnderNavBar />
		<LogInSignUpModal />
		<Switch>
			<Route exact path={ "/" } component={ Home } />
			<Route exact path={ "/products" } component={ AllProducts } />
			<Route exact path={ "/products/makeup" } component={ AllMakeup } />
			<Route exact path={ "/products/skincare" } component={ AllSkincare } />
			<Route exact path={ "/products/hair" } component={ AllHair } />
			<Route exact path={ "/products/bath&body" } component={ AllBathandBody } />
			<Route exact path={ "/products/fragrance" } component={ AllFragrance } />
			<Route exact path={ "/products/:productName~:productId" } component={ ProductShow } />
			<Route exact path={ "/basket"} component={ Basket } />
			<Redirect to="/" />
		</Switch>
		<Footer />
	</div>
);

export default App;


		