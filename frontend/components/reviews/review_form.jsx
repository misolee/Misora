import React from 'react';
import { Link, Redirect } from 'react-router-dom';

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
    window.scrollTo(0, 0);
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit() {
    let { errors, product, history } = this.props;
    return (e) => {
      e.preventDefault();
      this.props.createReview(this.state).then((review) => history.push(`/products/${product.name}~${product.id}`));
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
    let { product, brands, errors } = this.props;
    let { reviews, headline } = this.state;
    if (!this.props.product || !this.props.brands[product.brandId]) return null;
    errors = errors.map((error, i) => <div key={i}>{ error }</div>);

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
            <Link to={`/products/${ product.name }~${ product.id }`}>
              <div className="review-form-brand-product-name">
                <div className="review-form-brand-label">
                  { brands[product.brandId].name }
                </div>
                <div className="review-form-product-name">
                  { product.name }
                </div>
              </div>
            </Link>
            <div className="review-form-rating">
              <div className="review-form-label-rate-product">
                Rate this product
              </div>
              <div className="review-form-hearts">
                <input name="rating-heart" id="rating-1" type="radio" onClick={ this.handleRatingClick(1) } />
                  <label htmlFor="rating-1"><i id="rating-heart" className="fas fa-heart"></i></label>
                <input name="rating-heart" id="rating-2" type="radio" onClick={ this.handleRatingClick(2) } />
                  <label htmlFor="rating-2"><i id="rating-heart" className="fas fa-heart"></i></label>
                <input name="rating-heart" id="rating-3" type="radio" onClick={ this.handleRatingClick(3) } />
                  <label htmlFor="rating-3"><i id="rating-heart" className="fas fa-heart"></i></label>
                <input name="rating-heart" id="rating-4" type="radio" onClick={ this.handleRatingClick(4) } />
                  <label htmlFor="rating-4"><i id="rating-heart" className="fas fa-heart"></i></label>
                <input name="rating-heart" id="rating-5" type="radio" onClick={ this.handleRatingClick(5) } />
                  <label htmlFor="rating-5"><i id="rating-heart" className="fas fa-heart"></i></label>
              </div>
              <div className="review-form-review-label">
                Review
              </div>
              <textarea className="review-form-textarea" value={ reviews } onChange={ this.update("reviews") } minLength="20" placeholder="write your review" />
              <div className="review-form-textarea-minch">
                Min. 20 characters
              </div>
              <div className="review-form-headline-label">
                Headline (optional)
              </div>
              <input className="headline-input" type="text" value={ headline } onChange={ this.update("headline") } maxLength="50" placeholder="Add a headline" />
              <div className="review-form-textarea-minch">
                Max. 50 characters
              </div>
              <div className="recommendation">
                <div className="review-form-would-recommend-label">
                  Would you recommend this product?
                </div>
                <div className="recommend-buttons">
                  <input name="recommendation" id="yesrecommend" type="radio" onClick={ this.handleRecommend("yes") } />
                    <label htmlFor="yesrecommend">Yes</label>
                  <input name="recommendation" id="norecommend" type="radio" onClick={ this.handleRecommend("no") } />
                    <label htmlFor="norecommend">No</label>
                </div>
              </div>
              <div className="review-form-button-errors">
                <button className="add-review-button" onClick={ this.handleSubmit() }>Add Review</button>
                <div className="review-form-errors">
                  { errors }
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    )
  }
}

export default ReviewForm;