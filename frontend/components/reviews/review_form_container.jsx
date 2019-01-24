import { connect } from 'react-redux';
import ReviewForm from './review_form';
import { createReview } from '../../actions/review_actions';
import { fetchProduct } from '../../actions/product_actions';
import { fetchBrand } from '../../actions/brand_actions';

const mstp = (state, ownProps) => {
  let productId = ownProps.match.params.productId;
  let product = state.entities.products[productId];
  let brands = state.entities.brands;

  return ({
    productId,
    product,
    brands
  });
};

const mdtp = (dispatch) => (
  ({
    createReview: (review) => dispatch(createReview(review)),
    fetchProduct: (id) => dispatch(fetchProduct(id)),
    fetchBrand: (id) => dispatch(fetchBrand(id)),
  })
);

export default connect(mstp, mdtp)(ReviewForm);