class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.string :color
      t.integer :rating, null: false
      t.text :reviews, null: false
      t.string :headline
      t.boolean :recommend, null: false
      t.timestamps
    end

    add_index :reviews, :user_id
    add_index :reviews, :product_id
  end
end
