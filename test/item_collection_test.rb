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

end
