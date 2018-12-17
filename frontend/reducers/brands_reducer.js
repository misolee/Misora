import { RECEIVE_ALL_BRANDS, RECEIVE_ONE_BRAND } from '../actions/brand_actions';

export default (state = {}, action) => {
  Object.freeze(state);
  let newState;
  switch(action.type) {
    case RECEIVE_ALL_BRANDS:
      return action.brands;
    case RECEIVE_ONE_BRAND:
      newState = Object.assign({}, state, { [action.brand.id]: action.brand });
      return newState;
    default:
      return state;
  }
};