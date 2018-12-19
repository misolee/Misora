import { CLEAR_ERRORS } from '../actions/session_actions';
import { RECEIVE_ALL_BASKET_ITEMS, RECEIVE_BASKET_ITEMS_ERRORS } from '../actions/basket_item_actions';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_BASKET_ITEMS:
      return [];
    case RECEIVE_BASKET_ITEMS_ERRORS:
      return action.errors;
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};