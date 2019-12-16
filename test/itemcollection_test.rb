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

  def test_it_can_find_multiple_items_by_id_where_method
    itemcollection = Itemcollection.new("./data/items.csv")

    assert_equal 1, itemcollection.where(263395237).length
    assert_equal [],  itemcollection.where(0)

    assert_equal 3, itemcollection.where({merchant_id: 34}).length
  end
end
