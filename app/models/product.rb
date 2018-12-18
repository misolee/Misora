# == Schema Information
#
# Table name: products
#
#  id                         :bigint(8)        not null, primary key
#  name                       :string           not null
#  color                      :string           is an Array
#  size                       :string           not null
#  price                      :float            not null
#  category                   :string           not null
#  brand_id                   :integer          not null
#  what_it_is                 :text
#  what_it_does               :text
#  what_else_you_need_to_know :text
#  how_to_use                 :string           is an Array
#  ingredients                :text
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

class Product < ApplicationRecord
  validates :name, :size, :price, :category, :brand_id, presence: true
  validates :name, uniqueness: true

  belongs_to :brand

  has_many_attached :photos

  has_many :basket_items
end
