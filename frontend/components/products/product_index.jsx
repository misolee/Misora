import React from "react";
import { Link } from "react-router-dom";
import cloneDeep from "lodash/cloneDeep";
import ProductIndexItem from "./product_index_item";

class AllProductIndex extends React.Component {
  componentDidMount() {
    this.props.fetchProducts();
    this.props.fetchBrands();
  }

  componentWillUnmount() {
    window.scrollTo(0,0);
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

    return result.map((product, i) =>
      <div key={i} className="all-products-list-one-item">
        <ProductIndexItem key={i} product={product} brand={brands[product.brandId]} />
      </div>
    );
  }

  render() {
    let allProducts = this.props.products;
		let allBrands = this.props.brands;

		if (!allBrands || !allProducts) {
			return null;
    }

    let products = this.getRandomItems(allProducts, allProducts.length, allBrands);
    
    return (
      <div className="all-product-index-page">
        <div className="all-product-left-navbar">
        </div>
        <div className="all-product-index">
          <div className="product-count">
            <p>{ products.length } products</p>
          </div>
          <div className="all-products-list">
            { products }
          </div>
        </div>
      </div>
    )
  }
}

export default AllProductIndex;
