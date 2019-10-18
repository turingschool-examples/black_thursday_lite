require'csv'
require'pry'
require'./lib/item'
require'./lib/sales_engine'
require'minitest/autorun'
require'minitest/pride'

class ItemTest < MiniTest::Test

  def setup
    @item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })

    # @sales_engine = SalesEngine.from_csv({
    #   :items     => "./data/items.csv",
    #   :merchants => "./data/merchants.csv",
    # })
  end

  def test_it_exists
    assert_instance_of Item, @item
  end

end
