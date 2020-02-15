require "minitest/autorun"
require "minitest/pride"
require "./lib/item_collection"
require "./lib/item"

class ItemCollectionTest < Minitest::Test

  def test_that_it_exists
    csv_filepath = "./data/items.csv"
    item_collection = ItemCollection.new(csv_filepath)

    assert_instance_of ItemCollection, item_collection
  end

  def test_that_it_can_read_attributes
    csv_filepath = "./data/items.csv"
    item_collection = ItemCollection.new(csv_filepath)

    assert_equal "./data/items.csv", item_collection.file_path
    assert_equal [], item_collection.items
  end

  def test_it_can_instantiate_an_item
    csv_filepath = "./data/items.csv"
    item_collection = ItemCollection.new(csv_filepath)

    input = {id: "1234",
             name: "Ryan's Laptop",
             description: "The finest machine in all of the world",
             unit_price: "44",
             merchant_id: "12334471"}

    item = item_collection.instantiate_item(input)

    assert_instance_of Item, item
    assert_equal "1234", item.id
    assert_equal "44", item.unit_price
  end

  def test_it_can_collect_items
    csv_filepath = "./data/items.csv"
    item_collection = ItemCollection.new(csv_filepath)

    input1 = {id: "1234",
             name: "Ryan's Laptop",
             description: "The finest machine in all of the world",
             unit_price: "44",
             merchant_id: "12334471"}

    input2 = {id: "2345",
              name: "Carl's Laptop",
              description: "Not that great of a machine",
              unit_price: "1",
              merchant_id: "12334471"}

    item1 = item_collection.instantiate_item(input1)
    item2 = item_collection.instantiate_item(input2)
    item_collection.collect_item(item1)
    item_collection.collect_item(item2)

    assert_equal [item1, item2], item_collection.items
  end

  def test_it_can_instantiate_items_from_csv
    csv_filepath = "./data/items.csv"
    item_collection = ItemCollection.new(csv_filepath)
    item_collection.create_item_collection

    assert_instance_of Item, item_collection.items.first
    assert_instance_of Item, item_collection.items.last
    assert_equal 1367, item_collection.items.length
  end

end
