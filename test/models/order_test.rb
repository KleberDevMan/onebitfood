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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
