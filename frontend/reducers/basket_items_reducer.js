import { RECEIVE_ALL_BASKET_ITEMS, REMOVE_BASKET_ITEM, DELETE_ALL_BASKET_ITEMS } from '../actions/basket_item_actions';
import { LOGOUT_CURRENT_USER, RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { merge } from 'lodash';

export default (state = {}, action) => {
  Object.freeze(state);
  let newState;
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      if (!action.currentUser.basketItems) {
        return {};
      } else {
        return action.currentUser.basketItems;
      };
    case RECEIVE_ALL_BASKET_ITEMS:
      newState = merge({}, state, action.basketItems);
      return action.basketItems;
    case LOGOUT_CURRENT_USER:
      return {};
    case DELETE_ALL_BASKET_ITEMS:
      return {};
    case REMOVE_BASKET_ITEM:
      newState = merge({}, state);
      delete newState[action.basketItem.id];
      return newState;
    default:
      return state;
  }
};