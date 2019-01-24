import * as basketItemUtils from '../util/basket_item_api_util';

export const RECEIVE_ALL_BASKET_ITEMS = 'RECEIVE_ALL_BASKET_ITEMS';
export const REMOVE_BASKET_ITEM = 'REMOVE_BASKET_ITEM';
export const RECEIVE_BASKET_ITEMS_ERRORS = 'RECEIVE_BASKET_ITEMS_ERRORS';
export const DELETE_ALL_BASKET_ITEMS = 'DELETE_ALL_BASKET_ITEMS';

const receiveAllBasketItems = (basketItems) => (
  ({
    type: RECEIVE_ALL_BASKET_ITEMS,
    basketItems
  })
);

const removeBasketItem = (basketItemId) => (
  ({
    type: REMOVE_BASKET_ITEM,
    basketItemId
  })
);

const receiveBasketItemsErrors = (errors) => (
  ({
    type: RECEIVE_BASKET_ITEMS_ERRORS,
    errors
  })
);

const deleteBasketItems = () => (
  ({
    type: DELETE_ALL_BASKET_ITEMS,
  })
);

export const fetchBasketItems = () => (dispatch) => (
  basketItemUtils.fetchBasketItems()
  .then((basketItems) => dispatch(receiveAllBasketItems(basketItems)))
);

export const createBasketItem = (basketItem) => (dispatch) => (
  basketItemUtils.createBasketItem(basketItem)
  .then((basketItems) => dispatch(receiveAllBasketItems(basketItems)),
    (errors) => dispatch(receiveBasketItemsErrors(errors.responseJSON)))
);

export const updateBasketItem = (basketItem) => (dispatch) => (
  basketItemUtils.updateBasketItem(basketItem)
  .then((basketItems) => dispatch(receiveAllBasketItems(basketItems)),
    (errors) => dispatch(receiveBasketItemsErrors(errors.responseJSON)))
);

export const deleteBasketItem = (id) => (dispatch) => (
  basketItemUtils.deleteBasketItem(id)
  .then((basketItemId) => dispatch(removeBasketItem(basketItemId)))
);

export const deleteAllBasketItems = (basketItems) => (dispatch) => (
  basketItemUtils.deleteAllBasketItems(basketItems)
  .then(() => dispatch(deleteBasketItems()))
);

