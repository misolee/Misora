import React from 'react';
import BasketItem from './basket_item';
import { Link } from 'react-router-dom';

class Basket extends React.Component {
  constructor(props) {
    super(props);

    // // Set some state
    // this.state = {
    //   messageShown: this.props.basketItems
    // };

    // this.handler = this.handler.bind(this);
  }

  componentDidMount() {
    this.props.fetchProducts();
    this.props.fetchBrands();
    this.props.fetchBasketItems();
  }

  // handler() {
  //   this.props.fetchProducts();
  //   this.props.fetchBrands();
  //   this.props.fetchBasketItems();
  // }

  render() {
    let brands = this.props.brands;
    let products = this.props.basketItems.map((item, i) => {
      return (
        <BasketItem 
        product={ this.props.products[item.productId] }
        productId={ item.productId }
        basketId={ item.id }
        key={i}
        color={ item.color }
        quantity={ item.quantity }
        brands={ brands }
        deleteBasketItem={ this.props.deleteBasketItem } 
        updateBasketItem={ this.props.updateBasketItem }
        // action={ this.handler }
        />
      )
    });

    let subtotal = 0;
    let totalQuantity = 0;
    this.props.basketItems.forEach((item) => {
      if (!(this.props.products[item.productId])) return null;
      subtotal += this.props.products[item.productId].price * item.quantity;
      totalQuantity += item.quantity;
    });

    let tax = (subtotal * 0.10);
    let totalPrice = subtotal + tax;
    let shippingText = "You now qualify for free shipping!";
    
    if (totalPrice < 50) shippingText = `Only $${ (50 - totalPrice).toFixed(2) } away until FREE SHIPPING!`;
    if (totalPrice < 50) totalPrice += 5.99;
    if (totalPrice === 5.99) {
      totalPrice = 0;
      shippingText = "Your basket is empty";
    }  
    // let error = this.props.errors.map((error, i) => <div key={i} >{ error }</div>);

    let shipping = "$5.99";
    if (subtotal > 50) shipping = "FREE";
    if (subtotal === 0) shipping = "$"+((0).toFixed(2));

          
    return(
      <div className="basket-page">
        <div className="my-basket">My Basket</div>
        <div className="under-my-basket">
          <div className="qualify-for-free-shipping">{ shippingText }</div>
          <Link to='/'>
            <button className="continue-shopping">Continue Shopping <i className="fas fa-angle-right"></i></button>
          </Link>
        </div>
        <div className="basket-product-page-and-total-price">
          <div className="basket-product-details-and-numbers">
            <div className="items-in-basket">Items in basket ({ totalQuantity })</div>
            <div className="basket-product-details-list">
              { products }
            </div>
          </div>
          <div className="basket-total-price">
            <div className="basket-total-price-div">
              <div id="basket-total-price" className="order-summary">Order Summary</div>
              <div className="merchandise-subtotal">
                <div className="merchandise">Merchandise subtotal</div>
                <div id="basket-total-price" className="subtotal">
                  ${ subtotal.toFixed(2) }
                </div>
              </div>
              <div className="shipping-and-handling">
                <div>Shipping & Handling</div>
                <div>{ shipping }</div>
              </div>
              <div className="tax">
                <div>Tax</div>
                <div id="basket-total-price">
                  ${ tax.toFixed(2) }
                </div>
              </div>
              <div className="basket-empty-div-line"></div>
              <div className="estimated-total">
                <div id="basket-total-price">
                  Estimated Total
                </div>
                <div id="basket-total-price">
                  ${ totalPrice.toFixed(2) }
                </div>
              </div>
              <button className="checkout">CHECKOUT</button>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default Basket;