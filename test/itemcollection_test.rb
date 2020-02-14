require 'minitest/autorun'
require 'minitest/pride'
require './itemcollection'

class ItemCollection < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items    => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    @item_collection = @sales_engine.item_collection
  end

end
