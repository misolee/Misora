import React from 'react';
import BasketItem from './basket_item';
import { Link } from 'react-router-dom';

class Basket extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchProducts(),
    this.props.fetchBrands(),
    this.props.fetchBasketItems()
  }

  render() {
    let brands = this.props.brands;
    let products = this.props.basketItems.map((item, i) => {
      return (
        <BasketItem 
        product={ this.props.products[item.productId] }
        basketId={ item.id }
        key={i}
        color={ item.color }
        quantity={ item.quantity }
        brands={ brands }
        deleteBasketItem={ this.props.deleteBasketItem } />
        )
      });

    let subtotal = 0;
    let quantity = 0;
    this.props.basketItems.forEach((item) => {
      if (!(this.props.products[item.productId])) return null;
      subtotal += this.props.products[item.productId].price * item.quantity;
      quantity += item.quantity;
    });

    let tax = (subtotal * 0.10).toFixed(2);
    console.warn(tax);
    console.warn(subtotal);
    let totalPrice = subtotal + tax;
          
    return(
      <div className="basket-page">
        <div className="my-basket">My Basket</div>
        <div className="under-my-basket">
          <div className="qualify-for-free-shipping">You now qualify for free shipping!</div>
          <Link to='/'>
            <button className="continue-shopping">Continue Shopping <i className="fas fa-angle-right"></i></button>
          </Link>
        </div>
        <div className="basket-product-page-and-total-price">
          <div className="basket-product-details-and-numbers">
            <div className="items-in-basket">Items in basket ({ quantity })</div>
            <div className="basket-product-details-list">
              { products }
            </div>
          </div>
          <div className="basket-total-price">
            <div className="order-summary">Order Summary</div>
            <div className="merchandise-subtotal">
              <div className="merchandise">Merchandise subtotal</div>
              <div className="subtotal">
                ${ subtotal }
              </div>
            </div>
            <div className="shipping-and-handling">
              <div>Shipping & Handling</div>
              <div>FREE</div>
            </div>
            <div className="tax">
              <div>Tax</div>
              <div>
                ${ tax }
              </div>
            </div>
            Estimated Total
            ${ totalPrice }
          </div>
        </div>
      </div>
    )
  }
}

export default Basket;