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

require 'test_helper'

class BasketItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
