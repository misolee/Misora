import { RECEIVE_ALL_PRODUCTS, RECEIVE_ONE_PRODUCT } from '../actions/product_actions';

export default (state = {}, action) => {
  Object.freeze(state);
  let newState;
  switch(action.type) {
    case RECEIVE_ALL_PRODUCTS:
      return action.products;
    case RECEIVE_ONE_PRODUCT:
      newState = Object.assign({}, state, { [action.product.id]: action.product });
      return newState;
    default:
      return state;
  }
};