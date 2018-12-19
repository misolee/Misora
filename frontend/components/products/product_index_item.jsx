import React from 'react';
import { Link } from 'react-router-dom';

class ProductIndexItem extends React.Component {
  render() {
    let { product, brand } = this.props;
    if (!product || !brand) {
      return null;
    }
  
    return (
      <div className="all-index-product-info">
        <div className="index-product-hover">
          <Link to={`/products/${ product.name }~${ product.id }`} className="link-to-show">
            <div className="all-index-product-image">
              <img className="all-index-one-product-image" src={ product.photoUrls[0] } />
            </div>
            <div className="all-index-one-product-info">
              <div className="all-index-brand-name">{ brand.name }</div>
              <div className="all-index-product-name">{ product.name }</div>
            </div>
          </Link>
          <div className="all-index-product-price">${ product.price }.00</div>
        </div>
      </div>
    )
  }
}


export default ProductIndexItem;