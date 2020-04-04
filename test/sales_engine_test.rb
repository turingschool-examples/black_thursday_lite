require './test/all_requires'

class SalesEngineTest < MiniTest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists

    assert_instance_of SalesEngine, @sales_engine
  end

end
