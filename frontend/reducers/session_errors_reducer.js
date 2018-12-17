import { RECEIVE_ERRORS, RECEIVE_CURRENT_USER, CLEAR_ERRORS } from '../actions/session_actions';
import { CLOSE_MODAL } from '../actions/modal_actions';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return [];
    case RECEIVE_ERRORS:
      return action.errors;
    case CLOSE_MODAL:
      return [];
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};