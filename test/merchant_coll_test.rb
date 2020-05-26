require 'minitest/autorun'
require 'minitest/pride'
require './data/merchants.csv'
require 'csv'

class MerchantCollTest < Minitest::Test
  def setup
    @table = CSV.parse(File.read("./data/merchants.csv"), headers: true)
  end

  def test_it_returns_element_at_location_0
    assert_equal "12334105", @table[0][0]
  end

  def test_it_can_return_id
    assert_equal "12334105", @table[0]["id"]
  end

  def test_it_can_return_name
    assert_equal "Shopin1901", @table[0]["name"]
  end

  def test_it_can_return_all
    assert_equal './data/merchants.csv', @table.all
  end
end
