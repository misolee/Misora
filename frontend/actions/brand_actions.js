import * as brandUtils from '../util/brand_api_util';

export const RECEIVE_ALL_BRANDS = 'RECEIVE_ALL_BRANDS';
export const RECEIVE_ONE_BRAND = 'RECEIVE_ONE_BRAND';

const receiveAllBrands = (brands) => (
  ({
    type: RECEIVE_ALL_BRANDS,
    brands
  })
);

const receiveOneBrand = (brand) => (
  ({
    type: RECEIVE_ONE_BRAND,
    brand
  })
);

export const fetchBrands = () => (dispatch) => (
  brandUtils.fetchBrands()
  .then((brands) => dispatch(receiveAllBrands(brands)))
);

export const fetchBrand = (id) => (dispatch) => (
  brandUtils.fetchBrand(id)
  .then((brand) => dispatch(receiveOneBrand(brand)))
);