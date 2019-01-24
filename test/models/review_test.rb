# == Schema Information
#
# Table name: reviews
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  product_id :integer          not null
#  color      :string
#  rating     :integer          not null
#  reviews    :text             not null
#  headline   :string
#  recommend  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
