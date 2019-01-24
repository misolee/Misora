class ChangeTypeOfRecommend < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :recommend, :string
  end
end
