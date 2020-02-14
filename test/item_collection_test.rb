require "./test/test_helper"

class ItemCollectionTest < Minitest::Test

  def setup
    @item1 = Item.new({
                      :id          => 1,
                      :name        => "Pencil",
                      :description => "You can use it to write things",
                      :unit_price  => 1099,
                      :merchant_id => 1
                    })
    @item2 = Item.new({
                      :id          => 2,
                      :name        => "dog",
                      :description => "You can pet it",
                      :unit_price  => 85_000,
                      :merchant_id => 2
                    })
    merchant1 = Merchant.new({:id => 1, :name => "seller 1"})
    merchant2 = Merchant.new({:id => 2, :name => "seller 2"})

    merchant_collection = MerchantCollection.new([merchant1, merchant2])
    @item_collection = ItemCollection.new([@item1, @item2])
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_all_can_find_all_items
    assert_equal [@item1, @item2], @item_collection.all
  end

  def test_where_can_find_all_items_from_a_merchant
    assert_equal [], @item_collection.where(10)
    assert_equal [@item1], @item_collection.where(1)
  end

  def test_add_creates_new_item_in_items
    skip
    assert_equal [@item1, @item2], @item_collection.all

    item3 = Item.new({
                      :id          => 2,
                      :name        => "dog",
                      :description => "You can pet it",
                      :unit_price  => 85_000,
                      :merchant_id => 2
                    })

    @item_collection.add(item3)

    assert_equal [@item1, @item2, item3], @item_collection.all
  end

  def test_update_modifies_an_item_in_items

  end

end
