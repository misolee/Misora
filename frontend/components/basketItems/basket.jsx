import React from 'react';
import BasketItem from './basket_item';

class Basket extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      totalPrice: 0,
    };
  }

  componentDidMount() {
    this.props.fetchProducts();
    this.props.fetchBrands();
    this.props.fetchBasketItems();
  }

  render() {
    let brands = this.props.brands;
    let products = this.props.basketItems.map((item, i) => 
      <BasketItem 
        product={ this.props.products[item.productId] }
        key={i}
        color={ item.color }
        quantity={ item.quantity }
        brands={ brands } />)

    return(
      <div className="basket-page">
        <div className="my-basket">
          My Basket
        </div>
        <div className="under-my-basket">
          <div className="qualify-for-free-shipping">You now qualify for free shipping!</div>
          <button className="continue-shopping">Continue Shopping <i class="fas fa-angle-right"></i></button>
        </div>
        <div className="basket-product-page-and-total-price">
          <div className="basket-product-details-and-numbers">
            <div className="items-in-basket">Items in basket ({this.props.basketItems.length})</div>
            <div className="basket-product-details-list">
              { products }
            </div>
          </div>
          <div className="basket-total-price">
            TotalPrice
          </div>
        </div>
      </div>
    )
  }

}

export default Basket;