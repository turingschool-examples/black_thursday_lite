require_relative 'test_helper.rb'
require './lib/item_collection.rb'

class ItemCollectionTest < Minitest::Test

  def setup
    @new_instance = ItemCollection.new
  end

  def test_it_exists
    assert_instance_of ItemCollection, @new_instance
  end

end
