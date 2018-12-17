class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :color, array: true
      t.string :size, null: false
      t.float :price, null: false
      t.string :category, null: false
      t.integer :brand_id, null: false
      t.text :what_it_is
      t.text :what_it_does
      t.text :what_else_you_need_to_know
      t.string :how_to_use, array: true
      t.text :ingredients
      t.timestamps
    end

    add_index :products, :name, unique: true
    add_index :products, :price
    add_index :products, :category
    add_index :products, :brand_id
  end
end
