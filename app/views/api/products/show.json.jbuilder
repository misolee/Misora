json.partial! 'api/products/product', product: @product

json.photoUrls @product.photos.map { |file| url_for(file) }

json.reviews do 
  @reviews.each do |review|
    json.set! review.id do
      json.partial! 'api/reviews/review', review: review
    end
  end
end