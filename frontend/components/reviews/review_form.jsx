import React from 'react';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      product_id: parseInt(this.props.productId),
      rating: null,
      reviews: '',
      headline: '',
      recommend: null
    };
  }

  componentDidMount() {
    this.props.fetchProduct(this.props.productId)
      .then((res) => {
        this.props.fetchBrand(res.product.brandId);
      });
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit() {
    return (e) => {
      e.preventDefault();
      this.props.createReview(this.state);
    };
  }

  handleRatingClick(rating) {
    return(e) => this.setState({ rating });
  }

  handleRecommend(button) {
    return(e) => {
      if (button === "yes") this.setState({ recommend: "true" });
      if (button === "no") this.setState({ recommend: "false" });
    };
  }

  render() {
    let { product, brands } = this.props;
    let { reviews, headline } = this.state;
    if (!this.props.product || !this.props.brands[product.brandId]) return null;
    console.warn(this.state);

    return(
      <form className="review-form">
        <div className="review-form-label-title">
          Rate & Review
        </div>
        <div className="review-form-with-image">
          <div className="review-form-product-image">
            <img className="all-index-one-product-image" src={ product.photoUrls[0] } />
          </div>
          <div className="review-form-product-info">
            <div className="review-form-label">
              { brands[product.brandId].name }
            </div>
            <div className="review-form-product-name">
              { product.name }
            </div>
            <div className="review-form-rating">
              <div className="review-form-label">
                Rate this product
              </div>
              <div className="review-form-hearts">
                <i id="rating-heart" className="fas fa-heart" onClick={ this.handleRatingClick(1) }></i>
                <i id="rating-heart" className="fas fa-heart" onClick={ this.handleRatingClick(2) }></i>
                <i id="rating-heart" className="fas fa-heart" onClick={ this.handleRatingClick(3) }></i>
                <i id="rating-heart" className="fas fa-heart" onClick={ this.handleRatingClick(4) }></i>
                <i id="rating-heart" className="fas fa-heart" onClick={ this.handleRatingClick(5) }></i>
              </div>
              <div className="review-form-label">
                Review
              </div>
              <textarea className="review-form-textarea" value={ reviews } onChange={ this.update("reviews") } minLength="20" />
              <div>
                Min. 20 characters
              </div>
              <div className="review-form-label">
                Headline (optional)
              </div>
              <input className="headline-input" type="text" value={ headline } onChange={ this.update("headline") } maxLength="50"/>
              <div className="recommendation">
                <div className="review-form-label">
                  Would you recommend this product?
                </div>
                <div className="recommend-buttons">
                  <button onClick={ this.handleRecommend("yes") }>Yes</button>
                  <button onClick={ this.handleRecommend("no") }>No</button>
                </div>
              </div>
              <button className="add-review-button" onClick={ this.handleSubmit() }>Add Review</button>
            </div>
          </div>
        </div>
      </form>
    )
  }
}

export default ReviewForm;