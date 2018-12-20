import React from "react";
import { Link } from "react-router-dom";

const underNavBar = () => (
  <div className="under-nav-bar">
    <div className="undernavbar-buttons">
      <Link className="undernavbar-button" to='/products'>SHOP ALL</Link>
      <Link className="undernavbar-button" to='/products/makeup'>MAKEUP</Link>
      <Link className="undernavbar-button" to='/products/skincare'>SKINCARE</Link>
      <Link className="undernavbar-button" to='/products/hair'>HAIR</Link>
      <Link id="bath-body" className="undernavbar-button" to='/products/bath&body'>BATH & BODY</Link>
      <Link className="undernavbar-button" to='/products/fragrance'>FRAGRANCE</Link>
    </div>
    <div className="pinkBorderHeader2">
      <div className="free-shipping">FREE SHIPPING FOR $50 OR MORE</div>
    </div>
  </div>
);

export default underNavBar;