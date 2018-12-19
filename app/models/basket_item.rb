# == Schema Information
#
# Table name: basket_items
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  product_id :integer          not null
#  quantity   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color      :string           not null
#

class BasketItem < ApplicationRecord

  belongs_to :user
  belongs_to :product
end
