# == Schema Information
#
# Table name: order_products
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  comment    :text
#  order_id   :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates_associated :order
  validates_associated :product
  validates :quantity, presence: true
end
