require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    item_collection = Item_Collection.new
    require "pry"; binding.pry
    assert_instance_of Item_Collection, item_collection
end

end
