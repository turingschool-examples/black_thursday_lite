require_relative 'test_helper.rb'
require './lib/item_collection.rb'

class ItemCollectionTest < Minitest::Test

  def setup
    @item_collection = ItemCollection.new
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

end
