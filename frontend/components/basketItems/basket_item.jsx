import React from "react";

class BasketItem extends React.Component {
  constructor(props) {
    super(props);
  } 

  handleRemoveItem() {
    return (e) => {
      e.preventDefault();
      this.props.deleteBasketItem(this.props.basketId);
    };
  }

  render() {
    let { product } = this.props;
    if (!product) return null;
    
    return(
      <div className="basket-product-details">
        <div className="basket-product-details-box">
          <div className="basket-product-image">
            <img src={ this.props.product.photoUrls[0] } />
          </div>
          <div className="basket-one-product-details">
            <div className="basket-one-product-brand-name">
              { this.props.brands[product.brandId].name }
            </div>
            <div className="basket-one-product-name">
              { this.props.product.name }
            </div>
            <div className="basket-one-product-size-id">
              <div className="basket-one-product-size">
                SIZE { this.props.product.size }
              </div>
              <i className="fas fa-circle"></i>
              <div className="basket-one-product-id">
                ITEM { this.props.product.id }
              </div>
            </div>
            <div className="basket-one-product-color">
              COLOR: { this.props.color }
            </div>
          </div>
          <div className="basket-one-product-quantity-price-buttons">
            <div className="basket-one-product-quantity-price">
              <div className="basket-one-product-quantity">
                { this.props.quantity }
              </div>
              <div className="basket-one-product-price">
                $<span className="basket-one-product-single-price">{this.props.product.price * this.props.quantity}</span>.00
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