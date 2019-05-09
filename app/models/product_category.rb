# == Schema Information
#
# Table name: product_categories
#
#  id            :integer          not null, primary key
#  title         :string
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ProductCategory < ApplicationRecord
  belongs_to :restaurant
  has_many :products

  validates_associated :restaurant
  validates :title, presence: true
end
