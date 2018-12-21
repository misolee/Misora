import { connect } from "react-redux";
import Basket from './basket.jsx';
import { fetchBasketItems, updateBasketItem, deleteBasketItem, deleteAllBasketItems } from '../../actions/basket_item_actions';
import { fetchProducts } from "../../actions/product_actions";
import { fetchBrands } from "../../actions/brand_actions";
import { clearErrors } from "../../actions/session_actions";
import { openModal } from "../../actions/modal_actions";

const mstp = (state) => {
  let basketItems = Object.values(state.entities.basketItems);
  let products = state.entities.products;
  let brands = state.entities.brands;
  let itemsToBeDeleted = state.entities.basketItems;
  let currentUserId = state.session.id;

  return ({
    basketItems,
    products,
    brands,
    errors: state.errors.session,
    itemsToBeDeleted,
    currentUserId
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchBrands: () => dispatch(fetchBrands()),    
    fetchBasketItems: () => dispatch(fetchBasketItems()),
    updateBasketItem: (basketItem) => dispatch(updateBasketItem(basketItem)),
    deleteBasketItem: (id) => dispatch(deleteBasketItem(id)),
    clearErrors: () => dispatch(clearErrors()),
    deleteAllBasketItems: () => dispatch(deleteAllBasketItems()),
    openModal: (modal) => dispatch(openModal(modal))
  });
};

export default connect(mstp, mdtp)(Basket);