require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/sales_engine'
require './lib/item_collection'
require 'csv'

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    item = ItemCollection.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })

    assert_instance_of ItemCollection, item
  end

  def test_it_has_data
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

  def test_can_return_array_with_all_items
    sales_engine = SalesEngine.from_csv({
      :items     => './data/items.csv',
      :merchants => './data/merchants.csv'
    })
    item_collection = sales_engine.item_collection

    assert_instance_of Array, item_collection.all
  end

  def test_can_find_items_with_given_merchant_id
    sales_engine = SalesEngine.from_csv({
      :items     => './data/items.csv',
      :merchants => './data/merchants.csv'
    })
    merchant_collection = sales_engine.merchant_collection
    item_collection = sales_engine.item_collection
    merchant = merchant_collection.find(34)

    assert_instance_of Array, item_collection.where(merchant.id)
  end
end
