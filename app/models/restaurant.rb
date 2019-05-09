# == Schema Information
#
# Table name: restaurants
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  status       :integer
#  delivery_tax :float
#  state        :string
#  city         :string
#  street       :string
#  neighborhood :string
#  number       :string
#  complement   :string
#  reference    :string
#  cep          :string
#  latitude     :float
#  longitude    :float
#  category_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :product_categories
  has_many :orders
  has_many :reviews


  validates_associated :category # Validacao de associacao
  validates :name, presence: true # Validacoes de precenca
  validates :status, presence: true
  validates :delivery_tax, presence: true
  validates :city, presence: true
  validates :street, presence: true

  enum status: { closed: 0, open: 1 }

  # imagem representa model
  has_one_attached :image

  # localização
  geocoded_by :address

  after_validation :geocode

  def address
    [street, number, city, state].compact.join(', ')
  end
end
