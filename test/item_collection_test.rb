require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_collection'
require './lib/sales_engine'

class ItemCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
    @item_collection = @sales_engine.item_collection
  end

  def test_existence
    assert_instance_of ItemCollection, @item_collection
  end

  def test_attributes
    assert_instance_of Array, @item_collection.all
    assert_instance_of Item, @item_collection.all[0]
    assert_instance_of Item, @item_collection.all[-1]
  end

  def test_get_all
    item = Item.new({
      :id          => 263396013,
      :name        => "Free standing Woden letters",
      :description => "Free standing wooden letters \n\n15cm\n\nAny colours",
      :unit_price  => 700,
      :merchant_id => 12334185})
    assert_equal item.id, @item_collection.all[3].id
    assert_equal item.name, @item_collection.all[3].name
    assert_equal item.description, @item_collection.all[3].description
    assert_equal item.unit_price, @item_collection.all[3].unit_price
    assert_equal item.merchant_id, @item_collection.all[3].merchant_id
  end

  def test_where_merchant_id
    item1 = Item.new({
      :id          => 263396013,
      :name        => "Free standing Woden letters",
      :description => "Free standing wooden letters \n\n15cm\n\nAny colours",
      :unit_price  => 700,
      :merchant_id => 12334185})
    item2 = Item.new({
      :id          => 263499992,
      :name        => "Hair clip holder",
      :description => "Any colour glitter \nAny letter\nAny ribbon",
      :unit_price  => 600,
      :merchant_id => 12334185})
    pulled_item1 = @item_collection.where({merchant_id: 12334185})[2]
    pulled_item2 = @item_collection.where({merchant_id: 12334185})[5]
    assert_equal item1.id, pulled_item1.id
    assert_equal item2.id, pulled_item2.id
    assert_equal item1.name, pulled_item1.name
    assert_equal item2.name, pulled_item2.name
    assert_equal item1.description, pulled_item1.description
    assert_equal item2.description, pulled_item2.description
    assert_equal item1.unit_price, pulled_item1.unit_price
    assert_equal item2.unit_price, pulled_item2.unit_price
    assert_equal 12334185, pulled_item1.merchant_id
    assert_equal 12334185, pulled_item2.merchant_id
  end

  def test_where_unit_price
    item1 = Item.new({
      :description => "This is an University of Alabama hair bow. It is approximately 5 inches and has an alligator clip. This item is ready to ship.",
      :id          => 263443763,
      :merchant_id => 12335601,
      :name        => "Alabama Hair Bow",
      :unit_price  => 600})
    item2 = Item.new({
      :description => "This specific necklace is for a single small pearl choker.",
      :id          => 263449699,
      :merchant_id => 12336727,
      :name        => "Custom Pearl Necklaces, Pearl Chokers, Teal Pearl Choker, Coral Pear Choker, 3 pearl choker, single pearl choker,",
      :unit_price  => 600})
      pulled_item1 = @item_collection.where({price: 600})[2]
      pulled_item2 = @item_collection.where({price: 600})[5]
      assert_equal item1.id, pulled_item1.id
      assert_equal item2.id, pulled_item2.id
      assert_equal 600, pulled_item1.unit_price
      assert_equal 600, pulled_item2.unit_price
    end
end
