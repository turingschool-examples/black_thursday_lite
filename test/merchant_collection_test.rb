require "./test/test_helper"

class MerchantCollectionTest < Minitest::Test

  def setup
    item1 = Item.new({
                      :id          => 1,
                      :name        => "Pencil",
                      :description => "You can use it to write things",
                      :unit_price  => 1099,
                      :merchant_id => 1
                    })
    item2 = Item.new({
                      :id          => 2,
                      :name        => "dog",
                      :description => "You can pet it",
                      :unit_price  => 85_000,
                      :merchant_id => 2
                    })
    @merchant1 = Merchant.new({:id => 1, :name => "seller 1"})
    @merchant2 = Merchant.new({:id => 2, :name => "seller 2"})

    item_collection = ItemCollection.new([item1,item2])
    @merchant_collection = MerchantCollection.new([@merchant1, @merchant2])

  end


  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_all_list_all_merchants
    assert_equal [@merchant1, @merchant2], @merchant_collection.all
    assert_instance_of Merchant, @merchant_collection.all.first
  end

  def test_create_adds_a_new_merchant_to_merchants
    assert_equal [@merchant1, @merchant2], @merchant_collection.all

    merchant3 = Merchant.new({:id => 3, :name => "seller 3"})

    @merchant_collection.add(merchant3)

    assert_equal [@merchant1, @merchant2, merchant3], @merchant_collection.all
  end



end
