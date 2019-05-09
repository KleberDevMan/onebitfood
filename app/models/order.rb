# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  name          :string
#  phone_number  :string
#  total_value   :float
#  address       :string
#  status        :integer          default("closed")
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :total_value, presence: true

  enum status: { waiting: 0, delivered: 1 }

  # Quando for criado aceita-se paramentros para se criar tbm um OrderProduct
  accepts_nested_attributes_for :order_products, allow_destroy: true # Permite destruir os modelos associados junto

  # Antes de validar tudo
  before_validation :set_price

  private
  # Setar o preco final do pedido (order)
  def set_price
    @final_price = 0

    order_products.each do |order_product|
      product = Product.find order_product.product_id
      @final_price += order_product.quantity * product.price
    end

    self.total_value = @final_price
  end
end
