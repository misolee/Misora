import { connect } from 'react-redux';
import AllProductIndex from "./product_index";
import { fetchProducts } from "../../actions/product_actions";
import { fetchBrands } from "../../actions/brand_actions";
import { allSkincareProducts } from "../../selectors/skincare_selector";

const mstp = (state) => {
  let brands = state.entities.brands;

  return ({
    products: allSkincareProducts(state),
    brands,
    bigCategory: "skincare"
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchBrands: () => dispatch(fetchBrands())
  });
};

export default connect(mstp, mdtp)(AllProductIndex);

