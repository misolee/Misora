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

class Review < ApplicationRecord
  belongs_to :user

  belongs_to :product

  validates :user_id, :product_id, :rating, :reviews, :recommend, presence: true
  validates :reviews, length: { minimum: 20 }
end
