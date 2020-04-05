require './test/all_requires'

class MerchantCollectionTest < MiniTest::Test

  def setup

    @merchant1 = Merchant.new({:id => 1, :name => "Merchant 1"})
    @merchant2 = Merchant.new({:id => 2, :name => "Merchant 2"})

    @merchant_collection = MerchantCollection.new([@merchant1, @merchant2])
  end

  def test_it_exists

    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_find_all_merchants

    assert_equal [@merchant1, @merchant2], @merchant_collection.all
  end

  def test_it_can_find_merchant_by_id

    assert_equal @merchant1, @merchant_collection.find(1)
    assert_equal @merchant2, @merchant_collection.find(2)
  end

  def test_can_create_new_merchant_and_add_to_merchants_collection

    @merchant_collection.create({name: "Merchant 3"})
    assert_equal 3, @merchant_collection.all.length
    assert_equal "Merchant 3", @merchant_collection.all.last.name
    assert_equal 3, @merchant_collection.all.last.id
  end

end
