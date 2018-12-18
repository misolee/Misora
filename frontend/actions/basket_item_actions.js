import * as basketItemUtils from '../util/basket_item_api_util';

export const RECEIVE_ALL_BASKET_ITEMS = 'RECEIVE_ALL_BASKET_ITEMS';

const receiveAllBasketItems = (basketItems) => (
  ({
    type: RECEIVE_ALL_BASKET_ITEMS,
    basketItems
  })
);

const removeBasketItem = (id) => (
  ({
    type: REMOVE_BASKET_ITEM
  })
)

export const fetchBasketItems = () => (dispatch) => (
  basketItemUtils.fetchBasketItems()
  .then((basketItems) => dispatch(receiveAllBasketItems(basketItems)))
);

export const createBasketItem = (basketItem) => (dispatch) => (
  basketItemUtils.createBasketItem(basketItem)
  .then((basketItems) => dispatch(receiveAllBasketItems(basketItems)))
);

export const updateBasketItem = (basketItem) => (dispatch) => (
  basketItemUtils.updateBasketItem(basketItem)
  .then((basketItems) => dispatch(receiveAllBasketItems(basketItems)))
);

export const deleteBasketItem = (id) => (dispatch) => (
  basketItemUtils.deleteBasketItem(id)
  .then((basketItems) => dispatch(receiveAllBasketItems(basketItems)))
);