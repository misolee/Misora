import React from 'react';
import BasketItem from './basket_item';
import { Link } from 'react-router-dom';

class Basket extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchProducts();
    this.props.fetchBrands();
    this.props.fetchBasketItems();
  }

  handleSubmit() {
    return (e) => {
      e.preventDefault();
      this.props.deleteAllBasketItems(this.props.itemsToBeDeleted);
      this.props.openModal('checkout');
    };
  }

  handleSignInClick() {
    return (e) => {
      this.props.openModal('login');
    };
  }

  handleRegisterClick() {
    return(e) => {
      this.props.openModal('signup');
    };
  }

  render() {
    // if (!currentUser) return null;
    let { brands, currentUserId, basketItems, products, deleteBasketItem, updateBasketItem } = this.props;
    let productsInBasket;

    if (currentUserId) {
      if (basketItems.length === 0) {
        productsInBasket = (
          <div className="empty-basket">
            <div className="basket-is-empty">
              Your basket is currently empty.
            </div>
            <div className="basket-shop">
              <Link to='/products'>
                <button>SHOP</button>
              </Link>
            </div>
          </div>
        )
      } else {
        productsInBasket = (   
          basketItems.map((item) => {
            return (
              <BasketItem 
              product={ products[item.productId] }
              productId={ item.productId }
              basketId={ item.id }
              key={ item.id }
              color={ item.color }
              quantity={ item.quantity }
              brands={ brands }
              deleteBasketItem={ deleteBasketItem } 
              updateBasketItem={ updateBasketItem }
              />
            )
          })
        );
      }
    } else {
      productsInBasket = (
        <div className="basket-please-login">
          <div className="please-signin-or-register-to-checkout">
            Please Sign In or Register to checkout
          </div>
          <div className="signin-or-register">
            <button onClick={ this.handleSignInClick() }>Sign In</button>
            <button onClick={ this.handleRegisterClick() }>Register</button>          
          </div>
        </div>
      )
    }
    
    let subtotal = 0;
    let totalQuantity = 0;
    basketItems.forEach((item) => {
      if (!(products[item.productId])) return null;
      subtotal += products[item.productId].price * item.quantity;
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

    let shipping = "$5.99";
    if (subtotal > 50) shipping = "FREE";
    if (subtotal === 0) shipping = "$"+((0).toFixed(2));

    let checkoutButton;
    if (currentUserId && basketItems.length === 0 || !currentUserId) {
      null;
    } else {
      checkoutButton = <button className="checkout" onClick={this.handleSubmit()}>CHECKOUT</button>
    }
    
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
              { productsInBasket }
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
                <div className="shipping-price">{ shipping }</div>
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
              { checkoutButton }
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default Basket;