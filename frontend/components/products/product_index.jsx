import React from "react";
import { Link } from "react-router-dom";
import cloneDeep from "lodash/cloneDeep";
import ProductIndexItem from "./product_index_item";

class AllProductIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { filter : "all" };
  }
  componentDidMount() {
    this.props.fetchProducts();
    this.props.fetchBrands();
  }

  componentWillUnmount() {
    window.scrollTo(0,0);
  }

  filter(field) {
    return (e) => {
      e.preventDefault();
      this.setState({filter : field});
    }
  }

  getRandomItems(products, count, brands) {
    let clonedProducts = cloneDeep(products);
    let result = [];

    for (let i = 0; i < count; i++) {
      // getting random index
      let index = Math.floor(Math.random() * clonedProducts.length);

      // taking out one element in an array (array modified)
      result = result.concat(clonedProducts.splice(index, 1));
    }

    if (this.state.filter !== "all") result = result.filter((product) => product.category === this.state.filter);

    return result.map((product, i) => {
        return (
          <div key={i} className="all-products-list-one-item">
            <ProductIndexItem key={ product.id } product={ product } brand={ brands[product.brandId] } />
          </div>
        );
      }
    );
  }

  render() {
    let allProducts = this.props.products;
		let allBrands = this.props.brands;

		if (!allBrands || !allProducts) {
			return null;
    }

    let products = this.getRandomItems(allProducts, allProducts.length, allBrands);

    let categoryArr = []
    allProducts.forEach((product) => {
      if (!categoryArr.includes(product.category)) {
        categoryArr.push(product.category)
      }
    })

    let categories = categoryArr.map((category) => 
      // <Link to={`/products/${this.props.bigCategory}/${category}`}>
        <div key={category} onClick={this.filter(category)} className="product-index-category">{ category }</div>
      // </Link>
    )
    
    return (
      <div className="all-product-index-page">
					<div className="all-product-left-navbar">
						<div className="product-left-navbar-categories">
							{ categories }
						</div>
					</div>
				<div className="all-product-index">
          <div className="product-count">
            <p>{products.length} products</p>
          </div>
          <div className="all-products-list">{products}</div>
				</div>
			</div>
    )
  }
}

export default AllProductIndex;
