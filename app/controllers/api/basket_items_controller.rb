class Api::BasketItemsController < ApplicationController

  before_action :require_login

  def index
    @basket_items = BasketItem.where(user_id: current_user.id)
  end

  def create
    @basket_item = BasketItem.new(basket_item_params)
    @basket_item.user_id = current_user.id
    @basket_item.save
  end
p
  def update
  end

  def destroy
  end

  private
  def basket_item_params
    params.require(:basket_item).permit(:product_id, :quantity, :color)
  end
end