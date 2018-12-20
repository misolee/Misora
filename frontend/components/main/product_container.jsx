import { connect } from "react-redux";
import ProductIndex from "./product_index";
import { fetchProducts } from '../../actions/product_actions';
import { fetchBrands } from '../../actions/brand_actions';

const mstp = (state) => {
  let products = Object.values(state.entities.products);
  let brands = state.entities.brands;
  let basketItems = state.entities.basketItems;

  return ({
    products,
    brands,
    basketItems
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchBrands: () => dispatch(fetchBrands())
  });
};

export default connect(mstp, mdtp)(ProductIndex);