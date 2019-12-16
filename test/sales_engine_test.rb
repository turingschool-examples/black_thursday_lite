require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require 'csv'
require './lib/merchant'
require './lib/item'
class SalesEngineTest < Minitest::Test

    def test_it_exists
        sales_engine = SalesEngine.from_csv({
        :items     => "./data/items.csv",
        :merchants => "./data/merchants.csv",
        })

        assert SalesEngine, sales_engine
    end
end
