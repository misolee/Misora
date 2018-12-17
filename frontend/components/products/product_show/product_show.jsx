import React from "react";
import ProductShowDetail from "./product_show_details";

class ProductShow extends React.Component {
  
  componentDidMount() {
    let productId = this.props.productId;
    this.props.fetchProduct(productId)
      .then((res) => this.props.fetchBrand(res.product.brandId));
  }

  getQuantities() {
    let result = [];
    for (let i = 1; i < 11; i++) {
      result.push(<option key={i} value={`${i}`}>{i}</option>);
    }
    return result;
  }

  render() {
    let product; 
    let brand;
    if (this.props.products[this.props.productId]) {
      product = this.props.products[this.props.productId];
      brand = this.props.brands[this.props.products[product.id].brandId];
    }

    if (!product || !brand) return null;

    return (
			<div className="product-show-page">
				<div className="product-show-category">{product.category}</div>
				<div className="product-show-main">
					<div className="product-show-image">
						<img className="index-one-product-image" src={product.photoUrls[0]} />
					</div>
					<div className="product-show-information-with-details">
						<div className="product-show-information">
							<div className="product-show-info">
								<div className="product-show-brand-name-size">
									<div className="product-show-brand">{brand.name}</div>
									<div className="product-show-name-size">
										<div className="product-show-name">{product.name}</div>
										<div className="product-show-size">{product.size}</div>
									</div>
								</div>
								<div className="product-show-price-free-shipping">
									<div className="product-show-price">
										${product.price}.00
									</div>
									<div className="product-show-free-shipping">
										FREE SHIPPING
									</div>
								</div>
							</div>
							<div className="product-show-add-to-basket">
								<div className="product-show-checkbox">
									<label id="product-show-checkbox" className="checkbox">
										<p id="yes-i-want">
											Yes, I want FREE 2-Day Shipping with Misora FLASH
										</p>
										<input type="checkbox" />
										<div className="checkmark" />
									</label>
								</div>
								<div className="product-show-basket">
									<div className="number-of-quantity">
										<select id="number-of-quantity" defaultValue="1">
											{this.getQuantities()}
										</select>
									</div>
									<div className="add-to-basket">
										<button id="add-to-basket">ADD TO BASKET</button>
										<button id="add-to-loves">
											<i id="heart-add-to-loves" className="fas fa-heart" />
											ADD TO LOVES
										</button>
										<div className="product-show-find-in-store-zip-code">
											<div className="find-in-store">Find in store</div>
											<input className="zip-code" type="text" placeholder="Enter ZIP/Postal Code" maxLength="5"/>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div className="product-show-color">
							{ product.color }
						</div>
						<ProductShowDetail product={ product } />
					</div>
				</div>
			</div>
		)
  }
}

export default ProductShow;

// { product.color }
// { product.what_it_is }
// { product.what_it_does }
// { product.what_else_you_need_to_know }
// { product.how_to_use }
// { product.ingredients }