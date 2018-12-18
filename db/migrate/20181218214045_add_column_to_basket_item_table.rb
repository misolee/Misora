class AddColumnToBasketItemTable < ActiveRecord::Migration[5.2]
  def change
    add_column :basket_items, :color, :string, null: false
    remove_index :basket_items, [:user_id, :product_id]
    add_index :basket_items, [:user_id, :product_id]
  end
end
