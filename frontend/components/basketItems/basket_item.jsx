import React from "react";

const BasketItem = (props) => {
  if (!props.product) return null;
  let { product } = props;

  return(
    <div className="basket-product-details">
      <div className="basket-product-details-box">
        <div className="basket-product-image">
          <img src={ props.product.photoUrls[0] } />
        </div>
        <div className="basket-one-product-details">
          <div className="basket-one-product-brand-name">
            { props.brands[product.brandId].name }
          </div>
          <div className="basket-one-product-name">
            { props.product.name }
          </div>
          <div className="basket-one-product-size-id">
            <div className="basket-one-product-size">
              SIZE { props.product.size }
            </div>
            <i class="fas fa-circle"></i>
            <div className="basket-one-product-id">
              ITEM { props.product.id }
            </div>
          </div>
          <div className="basket-one-product-color">
            COLOR: { props.color }
          </div>
        </div>
        <div className="basket-one-product-quantity-price">
          <div className="basket-one-product-quantity">
            { props.quantity }
          </div>
          <div className="basket-one-product-price">
            ${ props.product.price * props.quantity }.00
          </div>
        </div>
        <div>
          <div>
            <button>REMOVE</button>
          </div>
          <div>
            
          </div>
        </div>
      </div>
    </div>
  )
};

export default BasketItem;