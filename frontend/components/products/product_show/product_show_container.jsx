import { connect } from "react-redux";
import ProductShow from "./product_show";
import { fetchProduct } from '../../../actions/product_actions';
import { fetchBrand } from '../../../actions/brand_actions';
import { createBasketItem } from '../../../actions/basket_item_actions';

const mstp = (state, ownParams) => {
  let productId = ownParams.match.params.productId;
  let currentUserId = state.session.id;
  
  return({
    products: state.entities.products,
    brands: state.entities.brands,
    errors: state.errors.basketItems,
    productId,
    currentUserId
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProduct: (id) => dispatch(fetchProduct(id)),
    fetchBrand: (id) => dispatch(fetchBrand(id)),
    createBasketItem: (basketItem) => dispatch(createBasketItem(basketItem))
  });
};

export default connect(mstp, mdtp)(ProductShow);