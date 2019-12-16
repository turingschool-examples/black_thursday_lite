require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/itemcollection'
require './lib/merchantcollection'

class ItemcollectionTest < Minitest::Test
  def test_it_exists
    itemcollection = Itemcollection.new("./data/items.csv")

    assert_instance_of Itemcollection, itemcollection
  end


  def test_it_can_create_all_merchants
    itemcollection = Itemcollection.new("./data/items.csv")

    assert_equal 1367, itemcollection.all("./data/items.csv").length
  end

  def test_it_can_find_multiple_items_by_id
    itemcollection = Itemcollection.new("./data/items.csv")

    assert_equal 1, itemcollection.where(263395237).length
    assert_equal [],  itemcollection.where(0)
  end
end
