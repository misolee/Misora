import { connect } from 'react-redux';
import AllProductIndex from "./product_index";
import { fetchProducts } from "../../actions/product_actions";
import { fetchBrands } from "../../actions/brand_actions";
import { allHairProducts } from "../../selectors/hair_selector";

const mstp = (state) => {
  let brands = state.entities.brands;

  return ({
    products: allHairProducts(state),
    brands,
    bigCategory: "hair"
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchBrands: () => dispatch(fetchBrands())
  });
};

export default connect(mstp, mdtp)(AllProductIndex);

