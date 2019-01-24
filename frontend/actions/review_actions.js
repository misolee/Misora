import * as reviewUtils from '../util/review_api_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';

const receiveReview = (review) => (
  ({
    type: RECEIVE_REVIEW,
    review
  })
);

const removeReview = (reviewId) => (
  ({
    type: REMOVE_REVIEW,
    reviewId
  })
);

const receiveReviewErrors = (errors) => (
  ({
    type: RECEIVE_REVIEW_ERRORS,
    errors
  })
);

export const createReview = (review) => (dispatch) => (
  reviewUtils.createReview(review)
  .then((review) => dispatch(receiveReview(review)),
  (errors) => dispatch(receiveReviewErrors(errors.responseJSON)))
);

export const editReview = (review) => (dispatch) => (
  reviewUtils.editReview(review)
  .then((review) => dispatch(receiveReview(review)),
  (errors) => dispatch(receiveReviewErrors(errors.responseJSON)))
);

export const deleteReview = (id) => (dispatch) => (
  reviewUtils.deleteReview(id)
  .then(() => dispatch(removeReview(id)),
  (errors) => dispatch(receiveReviewErrors(errors.responseJSON)))
);