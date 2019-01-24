import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';
import basketItemsErrorsReducer from './basket_items_errors_reducer';
import reviewErrorsReducer from './review_errors_reducer';

const errorsReducer = combineReducers({
  session: sessionErrorsReducer,
  basketItems: basketItemsErrorsReducer,
  reviews: reviewErrorsReducer
});

export default errorsReducer;