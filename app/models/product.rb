# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  description         :text
#  price               :float
#  product_category_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :product_category
  has_many :order_products

  validates_associated :product_category
  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :image
end
