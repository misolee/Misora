class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.with_attached_photos.find(params[:id])
    @reviews = @product.reviews
    render :show
  end
end
