import React from 'react';
import { Link } from 'react-router-dom';

const ProductIndexItem = props => {
  let { product, brand } = props;
  if (!product || !brand) {
    return null;
  }

  return (
		<div className="index-product-info">
			<Link to={`/products/${product.name}~${product.id}`} className="link-to-show">
			<div className="index-product-hover">
				<div className="index-product-image">
					<img className="index-one-product-image" src={ product.photoUrls[0] } />
				</div>
				<div className="index-one-product-info">
					<div className="index-brand-name">{ brand.name }</div>
					<div className="index-product-name">{ product.name }</div>
				</div>
			</div>
			</Link>
		</div>
	)
}


export default ProductIndexItem;