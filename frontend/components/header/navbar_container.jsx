import { connect } from "react-redux";
import NavBar from './navbar';
import { fetchBasketItems } from '../../actions/basket_item_actions';
import { fetchProducts } from "../../actions/product_actions";

const mstp = (state) => {
  let basketItems = Object.values(state.entities.basketItems);
  let products = state.entities.products;

  return ({
    basketItems,
    products
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchBasketItems: () => dispatch(fetchBasketItems()),
    fetchProducts: () => dispatch(fetchProducts())
  });
};

export default connect(mstp, mdtp)(NavBar);