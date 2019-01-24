import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import productsReducer from './products_reducer';
import brandsReducer from './brands_reducer';
import basketItemsReducer from './basket_items_reducer';
import reviewReducer from './reviews_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  products: productsReducer,
  brands: brandsReducer,
  basketItems: basketItemsReducer,
  reviews: reviewReducer
});

export default entitiesReducer;