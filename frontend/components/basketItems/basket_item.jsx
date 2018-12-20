import React from "react";
import { Link } from 'react-router-dom';

class BasketItem extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      id: props.basketId,
      product_id: props.productId,
      quantity: props.quantity,
      color: props.color
    };
  } 
  
  handleRemoveItem() {
    // console.error(this.state.quantity);
    return (e) => {
      e.preventDefault();
      // this.props.action();
      this.props.deleteBasketItem(this.props.basketId);
      this.setState({id: this.props.basketId})
      // .then(this.props.fetchBasketItems());
    };
  }
  
  getQuantities() {
    let result = [];
    for (let i = 1; i < 11; i++) {
      result.push(<option key={i} value={`${i}`}>{i}</option>);
    }
    return result;
  }
  
  handleQuantity() {
    console.error(this.state.id)
    console.warn(this.props.basketId)
    return (e) => {
      this.setState({ quantity: e.target.value }, () => this.props.updateBasketItem(this.state));
    }
  }
  
  render() {
    let { product, color, brands, quantity } = this.props;
    if (!product) return null;
    
    return(
      <div className="basket-product-details">
        <div className="basket-product-details-box">
          <div className="basket-product-image">
            <img src={ product.photoUrls[0] } />
          </div>
          <div className="basket-one-product-details">
            <Link to={`/products/${product.name}~${product.id}`} className="link-back-to-details">
              <div className="basket-one-product-brand-name">
                { brands[product.brandId].name }
              </div>
              <div className="basket-one-product-name">
                { product.name }
              </div>
            </Link>
            <div className="basket-one-product-size-id">
              <div className="basket-one-product-size">
                SIZE { product.size }
              </div>
              <i className="fas fa-circle"></i>
              <div className="basket-one-product-id">
                ITEM { product.id }
              </div>
            </div>
            <div className="basket-one-product-color">
              COLOR: { color }
            </div>
          </div>
          <div className="basket-one-product-quantity-price-buttons">
            <div className="basket-one-product-quantity-price">
              <div className="basket-one-product-quantity">
                <select id="number-of-quantity-in-basket" value={ this.state.quantity } onChange={ this.handleQuantity() }>
                  { this.getQuantities() }
                </select>
              </div>
              <div className="basket-one-product-price">
                ${(product.price * quantity).toFixed(2)}
              </div>
            </div>
            <div className="basket-one-product-remove-button-move-to-loves">
              <div className="basket-one-product-remove-button">
                <button onClick={ this.handleRemoveItem() }>REMOVE</button>
              </div>
              <div className="basket-one-product-move-to-loves">
                <button>MOVE TO LOVES</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }
};

export default BasketItem;