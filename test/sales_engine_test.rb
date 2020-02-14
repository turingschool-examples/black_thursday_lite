require './data/merchants.csv'
require './data/items.csv'

class TestSalesEngine < Minitest::Test

  def test_it_exists

  end

   sales_engine = SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
 })
end
