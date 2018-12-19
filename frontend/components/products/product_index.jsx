import React from "react";
import { Link } from "react-router-dom";
import ProductIndexItem from "./product_index_item";

class AllProductIndex extends React.Component {
  componentDidMount() {
    this.props.fetchProducts();
    this.props.fetchBrands();
  }

  componentWillUnmount() {
    window.scrollTo(0,0);
  }

  render() {
    let allProducts = this.props.products;
		let allBrands = this.props.brands;

		if (!allBrands || !allProducts) {
			return null;
    }
    
    let products = allProducts.map((product, i) =>
      <div key={i} className="all-products-list-one-item">
        <ProductIndexItem product={ product } brand={ allBrands[product.brandId] } />
      </div>
    );

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
