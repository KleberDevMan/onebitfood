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

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
