import { connect } from "react-redux";
import ProductShow from "./product_show";
import { fetchProduct } from '../../../actions/product_actions';
import { fetchBrand } from '../../../actions/brand_actions';
import { createBasketItem, fetchBasketItems } from '../../../actions/basket_item_actions';
import { clearErrors } from "../../../actions/session_actions";
import { openModal } from "../../../actions/modal_actions";

const mstp = (state, ownParams) => {
  let productId = ownParams.match.params.productId;
  let currentUserId = state.session.id;
  let basketItems = Object.values(state.entities.basketItems);
  let reviews = Object.values(state.entities.reviews).sort( function(a,b) {
      return new Date(b.updatedAt) - new Date(a.updatedAt);
  });
  
  return({
    product: state.entities.products[productId],
    brands: state.entities.brands,
    errors: state.errors.basketItems,
    productId,
    currentUserId,
    basketItems,
    reviews
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProduct: (id) => dispatch(fetchProduct(id)),
    fetchBrand: (id) => dispatch(fetchBrand(id)),
    createBasketItem: (basketItem) => dispatch(createBasketItem(basketItem)),
    fetchBasketItems: () => dispatch(fetchBasketItems()),
    clearErrors: () => dispatch(clearErrors()),
    openModal: (modal) => dispatch(openModal(modal))
  });
};

export default connect(mstp, mdtp)(ProductShow);