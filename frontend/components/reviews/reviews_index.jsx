import React from 'react';
import ReviewIndexItem from './reviews_index_item';

class ReviewsIndex extends React.Component {
  render() {
    let { reviews, currentUserId, deleteReview } = this.props;
    let review;

    if (!reviews.length) {
      review = <div className="be-the-first-one-to-review">Be the first one to review this product</div>
    } else {
      review = reviews.map((review) => {
        return (
          <div key={ review.id } className="">
            <ReviewIndexItem review={ review } currentUserId={ currentUserId }
              deleteReview= { deleteReview }/>
          </div>
        )
      });
    }

    return(
      <div>
        { review }
      </div>
    );
  }
}

export default ReviewsIndex;