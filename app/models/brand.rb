# == Schema Information
#
# Table name: brands
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Brand < ApplicationRecord
  validates :name, uniqueness: true

  has_many :products
end
