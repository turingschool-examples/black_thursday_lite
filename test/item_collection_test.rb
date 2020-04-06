require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test
  def test_it_exits
    item = ItemCollection.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })

    assert_instance_of ItemCollection, item
  end

  def test_it_has_attributes
    item = ItemCollection.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })

    assert_equal 1, item.id
    assert_equal "Pencil", item.name
    assert_equal "You can use it to write things", item.description
    assert_equal 1099, item.unit_price
    assert_equal 2, item.merchant_id
  end

  def test_it_can_find_all_items
    item = ItemCollection.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_equal item, item.all
  end

  def test_it_can_find_items_by_merchant_id
    item = ItemCollection.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_equal [] || [item.merchant_id], item.where(merchant_id)
  end
end
