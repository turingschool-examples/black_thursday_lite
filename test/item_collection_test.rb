require_relative 'test_helper.rb'
require './lib/item_collection.rb'
require './lib/item.rb'

class ItemCollectionTest < Minitest::Test

  def setup
    @item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    @item_collection = ItemCollection.new(@item)
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

end
