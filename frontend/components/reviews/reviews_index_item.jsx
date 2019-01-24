import React from 'react';
// import { Link } from 'react-router-dom';

class ReviewIndexItem extends React.Component {
  recommend() {
    let { recommend } = this.props.review;

    if (recommend === "true")  {
      return <div className="review-index-item-recommend"><i className="fas fa-check"></i> Recommends this product</div>
    } else if (recommend === "false") {
      return <div></div>
    }
  }

  showDeleteReview() {
    let { currentUserId, review } = this.props;
    if (currentUserId === review.userId) {
      return <div onClick={ this.deleteReviewOnPage() } className="delete-review"><i className="fas fa-trash-alt"></i></div>
    } else {
      return <div></div>
    }
  }

  deleteReviewOnPage() {
    return (e) => {
      e.preventDefault();
      this.props.deleteReview(this.props.review.id);
    };
  }

  date() {
    let { updatedAt } = this.props.review;
    const monthNames = {
      0: 'January',
      1: 'February',
      2: 'March',
      3: 'April',
      4: 'May',
      5: 'June',
      6: 'July',
      7: 'August',
      8: 'September',
      9: 'October',
      10: 'November',
      11: 'December'
    }

    let year = new Date(updatedAt).getFullYear();
    let month = monthNames[new Date(updatedAt).getMonth()];
    let day = new Date(updatedAt).getDate();

    return `${day} ${month} ${year}`;
  }

  render() {
    let { headline, reviews, rating } =  this.props.review;

    let heartRating = []
    for (let i = 0; i < rating; i++) {
      heartRating.push(<i className="fas fa-heart" />);
    }
    for (let i = 0; i < 5 - rating; i++) {
      heartRating.push(<i className="fas fa-heart uncolored-heart" />);
    }
    let heart = heartRating.map((heart, i) => <div key={i}>{ heart }</div>)

    return (
      <div className="review-index-item">
        <div className="review-index-item-user-profile">
          <i className="far fa-kiss-wink-heart"></i>
        </div>
        <div className="review-index-item-rating">
          <div className="rating-date">
            <div className="heart-rating">
              { heart }
            </div>
            <div className="review-index-item-date">
              { this.date() }
            </div>
          </div>
          <div className="review-index-item-headline">
            { headline }
          </div>
          <div>
            { reviews }
          </div>
          <div className="recommend-delete-review">
            { this.recommend() }
            { this.showDeleteReview() }
          </div>
        </div>
      </div>
    )
  }
}


export default ReviewIndexItem;