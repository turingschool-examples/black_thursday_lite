require 'minitest/autorun'
require_relative '../lib/salesengine'

class TestSalesEngine < Minitest::Test

  def test_salesengine_from_csv
    assert_equal 'self_from_csv', SalesEngine.from_csv
  end

  def items

  end

end
