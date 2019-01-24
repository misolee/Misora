import { RECEIVE_REVIEW, RECEIVE_REVIEW_ERRORS } from '../actions/review_actions';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REVIEW:
      return [];
    case RECEIVE_REVIEW_ERRORS:
      return action.errors;
    default:
      return state;
  }
};