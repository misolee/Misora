class ChangeTypeOfBirthdayInUserModel < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :birthday, :string
  end
end
