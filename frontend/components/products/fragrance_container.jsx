import { connect } from 'react-redux';
import AllProductIndex from "./product_index";
import { fetchProducts } from "../../actions/product_actions";
import { fetchBrands } from "../../actions/brand_actions";
import { allFragranceProducts } from "../../selectors/fragrance_selector";

const mstp = (state) => {
  let brands = state.entities.brands;

  return ({
    products: allFragranceProducts(state),
    brands,
    bigCategory: "fragrance"
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchBrands: () => dispatch(fetchBrands())
  });
};

export default connect(mstp, mdtp)(AllProductIndex);

