class Api::BasketItemsController < ApplicationController
  before_action :require_login

  def index
    @basket_items = BasketItem.where(user_id: current_user.id)
  end

  def create
    # finding exact basketItem
    @basket_items = BasketItem.where(user_id: current_user.id)

    @basket_item = BasketItem.find_by(user_id: current_user.id, product_id: basket_item_params[:product_id], color: basket_item_params[:color])

    # if nil?
    if !current_user
      render json: ['Please Sign In'], status: 422
    else
      if @basket_item.nil?
        @basket_item = BasketItem.new(basket_item_params)
        @basket_item.user_id = current_user.id
        @basket_item.save
        render :index
      else
    # if there is exact item, update the quantity
        new_quantity = @basket_item.quantity + params[:basket_item][:quantity].to_i
        @basket_item.update(quantity: new_quantity)
        render :index
      end
    end
  end
  
  def update
    @basket_item = BasketItem.find(params[:id])
    
    if @basket_item.update(basket_item_params)
      render :show
    else
      render json: ['Already in basket'], status: 422
    end
  end
  
  def destroy
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    render :show
  end
  
  private
  def basket_item_params
    params.require(:basket_item).permit(:product_id, :quantity, :color)
  end
end