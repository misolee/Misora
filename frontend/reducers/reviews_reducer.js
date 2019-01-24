import { RECEIVE_REVIEW, REMOVE_REVIEW } from '../actions/review_actions';
import { RECEIVE_ONE_PRODUCT } from '../actions/product_actions';

export default (state = {}, action) => {
  Object.freeze(state);
  let newState;
  switch(action.type) {
    case RECEIVE_REVIEW:
      newState =  Object.assign({}, state, { [action.review.id]: action.review });
      return newState;
    case REMOVE_REVIEW:
      newState = merge({}, state);
      delete newState[action.review.id];
      return newState;
    case RECEIVE_ONE_PRODUCT:
      if (!action.product.reviews) return {};
      return action.product.reviews;
    default:
      return state;
  }
};