import React from "react";
import ProductShowDetail from "./product_show_details";
import ProductShowColor from "./product_show_color";

class ProductShow extends React.Component {
	constructor(props) {
		super(props);

		this.state = {
			product_id: parseInt(props.productId),
			quantity: 1,
			color: 'none'
		};
	}
  
  componentDidMount() {
		let productId = this.props.productId;
    this.props.fetchProduct(productId)
			.then((res) => {
				this.props.fetchBrand(res.product.brandId);
				if (this.props.product.color) {
					this.setState({color: this.props.product.color[0]});
				} else {
					this.setState({ color: 'none' });
				}
			});
		this.props.fetchBasketItems();
  }

  getQuantities() {
		let result = [];
    for (let i = 1; i < 11; i++) {
			result.push(<option key={i} value={`${i}`}>{i}</option>);
    }
    return result;
	}

	handleQuantity() {
		return (e) => {
			this.setState({ quantity: e.target.value }, () => this.updateQuantity());
		}
	}

	updateQuantity() {
		let { quantity } = this.state;
		this.setState({ quantity });
	}
	
	handleColorPick() {
		return (e) => {
			let pickedColor = e.target.getAttribute("data-color")
			this.setState({color: pickedColor})
		}
	}

	addedToBasket() {
		let divEl = document.getElementsByClassName("quantity-added-to-basket");
		divEl[0].style.display = 'block';
		setTimeout(() => divEl[0].style.display = 'none', 2000)
	}
	
	handleSubmit() {
		return () => {
			this.props.createBasketItem(this.state)
			.then(null, () => setTimeout(this.props.clearErrors, 2000));
			this.addedToBasket();
		}
	}

  render() {
		const { product } = this.props;
    let brand;
    if (product) {
			brand = this.props.brands[product.brandId];
		}
		
		if (!product || !brand) return null;

		let errors = this.props.errors.map((error) => error)

    return (
			<div className="product-show-page">
				<div className="product-show-category">{ product.category }</div>
				<div className="product-show-main">
					<div className="product-show-image">
						<img className="index-one-product-image" src={ product.photoUrls[0] } />
					</div>
					<div className="product-show-information-with-details">
						<div className="product-show-information">
							<div className="product-show-info">
								<div className="product-show-brand-name-size">
									<div className="product-show-brand">{ brand.name }</div>
									<div className="product-show-name-size">
										<div className="product-show-name">{ product.name }</div>
										<div className="product-show-size">{ product.size }</div>
										<div className="product-show-size">ITEM { product.id }</div>
									</div>
								</div>
								<div className="product-show-price-free-shipping">
									<div className="product-show-price">
										${ product.price }.00
									</div>
									<div className="product-show-free-shipping">
										FREE SHIPPING for $50 or more
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
										<select id="number-of-quantity" defaultValue="1" onChange={ this.handleQuantity() }>
											{ this.getQuantities() }
										</select>
									</div>
									<button id="add-to-basket" onClick={ this.props.currentUserId ? this.handleSubmit() : () => this.props.openModal('login') }>ADD TO BASKET</button>
									<div className="quantity-added-to-basket">{ this.state.quantity } item(s) added to basket</div>
								</div>
								<div className="limit-to-basket">{ errors }</div>
								<div className="add-to-basket">
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
						<div className="product-show-color" onClick={ this.handleColorPick() }>
							<ProductShowColor colors={ product.color } />
						</div>
						<ProductShowDetail product={ product } />
					</div>
				</div>
			</div>
		)
  }
}

export default ProductShow;