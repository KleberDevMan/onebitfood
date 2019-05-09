# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  value         :integer
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :restaurant

  validates_associated :restaurant
  validates :value, inclusion: 1..5 # Valor tem que estar incluido entre 1 a 5
end
