import * as productUtils from '../util/product_api_util';

export const RECEIVE_ALL_PRODUCTS = 'RECEIVE_ALL_PRODUCTS';
export const RECEIVE_ONE_PRODUCT = 'RECEIVE_ONE_PRODUCT';

const receiveAllProducts = (products) => (
  ({
    type: RECEIVE_ALL_PRODUCTS,
    products
  })
);

const receiveOneProduct = (product) => (
  ({
    type: RECEIVE_ONE_PRODUCT,
    product
  })
);

export const fetchProducts = () => (dispatch) => (
  productUtils.fetchProducts()
  .then((products) => dispatch(receiveAllProducts(products)))
);

export const fetchProduct = (id) => (dispatch) => (
  productUtils.fetchProduct(id)
  .then((product) => dispatch(receiveOneProduct(product)))
);