import React from "react";
import { Link } from 'react-router-dom';
import cloneDeep from "lodash/cloneDeep";
import ProductIndexItem from './product_index_item';

class ProductIndex extends React.Component {
  componentDidMount() {
    this.props.fetchProducts();
    this.props.fetchBrands();
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
      <ProductIndexItem key={i} product={product} brand={brands[product.brandId]} />
    );
  }

  render() {
    let allProducts = this.props.products;
    let allBrands = this.props.brands;

    if (!allBrands || !allProducts) {
      return null;
    }
    
    let products1 = this.getRandomItems(allProducts, 6, allBrands);
    let products2 = this.getRandomItems(allProducts, 6, allBrands);
    let products3 = this.getRandomItems(allProducts, 6, allBrands);

    return (
      <div>
        <div className="splash1"></div>
        <div className="product-index">
          <div className="index-text">Just Arrived</div>
          <div className="arrived-products">
            { products1 }
          </div>
          <div className="index-text">Recommendation For You</div>
          <div className="arrived-products">
            { products2 }
          </div>
          <div className="index-text">Best Sellers</div>
          <div className="arrived-products">
            { products3 }
          </div>
        </div>
        <div className="splash2"></div>
      </div>
    )
  }
};

export default ProductIndex;