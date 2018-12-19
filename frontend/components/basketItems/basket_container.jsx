import { connect } from "react-redux";
import Basket from './basket.jsx';
import { fetchBasketItems, updateBasketItem, deleteBasketItem } from '../../actions/basket_item_actions';
import { fetchProducts } from "../../actions/product_actions";
import { fetchBrands } from "../../actions/brand_actions";

const mstp = (state) => {
  let basketItems = Object.values(state.entities.basketItems);
  let products = state.entities.products;
  let brands = state.entities.brands;

  return ({
    basketItems,
    products,
    brands
  });
};

const mdtp = (dispatch) => {
  return ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchBrands: () => dispatch(fetchBrands()),    
    fetchBasketItems: () => dispatch(fetchBasketItems()),
    updateBasketItem: (basketItem) => dispatch(updateBasketItem(basketItem)),
    deleteBasketItem: (id) => dispatch(deleteBasketItem(id))
  });
};

export default connect(mstp, mdtp)(Basket);