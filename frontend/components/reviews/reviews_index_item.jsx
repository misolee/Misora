import React from 'react';
// import { Link } from 'react-router-dom';

class ReviewIndexItem extends React.Component {
  recommend() {
    let { recommend } = this.props.review;

    if (recommend === "true")  {
      return <div><i className="fas fa-check"></i> Recommends this product</div>
    } else if (recommend === "false") {
      return <div></div>
    }
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
    let { headline, reviews } =  this.props.review;

    return (
      <div>
        <div className="heart-rating">
          <i className="fas fa-heart"></i>
          <i className="fas fa-heart"></i>
          <i className="fas fa-heart"></i>
          <i className="fas fa-heart"></i>
          <i className="fas fa-heart"></i>
        </div>
        { this.date() }
        { headline }
        { reviews }
        { this.recommend() }
      </div>
    )
  }
}


export default ReviewIndexItem;