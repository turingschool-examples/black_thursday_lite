require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test
  def setup
    @item = Item.new({
        :id          => 1,
        :name        => "Pencil",
        :description => "You can use it to write things",
        :unit_price  => 1099,
        :merchant_id => 2
      })
      @item2 = Item.new({
        :id          => 25,
        :name        => "Coffee Mug",
        :description => "Drink from me",
        :unit_price  => 10_000,
        :merchant_id => 27

        })

        @item3 = Item.new({
          :id          => 100,
          :name        => "Coffee Mug",
          :description => "Drink from me",
          :unit_price  => 10_000,
          :merchant_id => 27
        })
        @item_list = [@item, @item2, @item3]
    @item_collection = ItemCollection.new(@item_list)
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_can_find_all_items
    assert_equal @item_list, @item_collection.all
  end

  def test_it_can_return_an_array_of_items_from_merchant_id
    skip
    assert_equal [@item], @item_collection.where(2)
    assert_equal [@item2], @item_collection.where(27)
    assert_equal [], @item_collection.where(34)
  end

  def test_it_can_return_all_items_that_meet_where_criteria
    assert_equal [@item2, @item3], @item_collection.where({name: "Coffee Mug"})

  end
end
