require './test/all_requires'

class ItemCollectionTest < MiniTest::Test

  def setup

    @merchant1 = Merchant.new({:id => 1, :name => "Merchant 1"})
    @merchant2 = Merchant.new({:id => 2, :name => "Merchant 2"})
    @merchant3 = Merchant.new({:id => 3, :name => "Merchant 3"})

    @item1 = Item.new({
      :id          => 1,
      :name        => "test_object_1",
      :description => "test_description_1",
      :unit_price  => 1000,
      :merchant_id => 3
    })

    @item2 = Item.new({
      :id          => 2,
      :name        => "test_object_2",
      :description => "test_description_2",
      :unit_price  => 2000,
      :merchant_id => 3
    })

    @item3 = Item.new({
      :id          => 3,
      :name        => "test_object_3",
      :description => "test_description_3",
      :unit_price  => 3000,
      :merchant_id => 1
    })

    @item_collection = ItemCollection.new([@item1, @item2, @item3])
  end

  def test_it_exists

    assert_instance_of ItemCollection, @item_collection
  end

  def test_can_return_all_items_by_matching_merchant_id

    assert_equal [@item3], @item_collection.where(@merchant1.id)
    assert_equal [@item1, @item2], @item_collection.where(@merchant3.id)
  end
end
