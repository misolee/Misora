@basket_items.each do |basket_item|
  json.set! basket_item.product_id do
    json.partial! 'api/basket_items/basket_item', basket_item: basket_item
  end
end