import { connect } from "react-redux";
import ProductShow from "./product_show";
import { fetchProduct } from '../../actions/product_actions';
import { fetchBrand } from '../../actions/brand_actions';

const mstp = (state, ownParams) => {
  let productId = ownParams.match.params.productId;
  
  return({
    products: state.entities.products,
    brands: state.entities.brands,
    productId
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProduct: (id) => dispatch(fetchProduct(id)),
    fetchBrand: (id) => dispatch(fetchBrand(id))
  });
};

export default connect(mstp, mdtp)(ProductShow);