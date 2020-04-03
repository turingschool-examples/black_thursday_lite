require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require './lib/merchants'
require './lib/items'

class MerchantsTest < Minitest::Test

  def test_it_exists
    merchants = Merchants.new
    assert_instance_of Merchants, merchants
  end
end
