require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < MiniTest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./fixtures/items_fixture.csv",
      :merchants => "./fixtures/merchants_fixture.csv"
    })
  end

  def test_it_exists
    # skip
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_can_read_items
    # skip
    assert_instance_of Array, @sales_engine.items
    # assert_equal true, sales_engine.all? |item|
    # ...
    # end
  end

  def test_it_can_read_merchants
    # skip
    assert_instance_of Array, @sales_engine.merchants
    # assert_equal true, sales_engine.all? |merchant|
    # ...
    # end
  end
end
