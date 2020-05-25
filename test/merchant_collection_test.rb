require "./lib/merchant_collection"
require "minitest/autorun"
require "minitest/pride"

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new("./util/merchants.csv")
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_get_an_array_of_the_merchants
    merchants = @merchant_collection.all

    assert_instance_of Array, merchants
    assert_equal 2, merchants.size # The util file has 2 merchants

    assert_equal true, merchants.all? { |merchant| merchant.class == Merchant }
  end

  def test_it_can_find_merchant_by_id
    assert_instance_of Merchant, @merchant_collection.find(12334105)
    assert_instance_of Merchant, @merchant_collection.find(12334112)
    assert_nil @merchant_collection.find(42)
  end

  def test_it_can_create_a_new_merchant_with_a_unique_id
    merchants = @merchant_collection.all
    assert_equal false, merchants.any? { |merchant| merchant.name == "Monster Merchant" }

    @merchant_collection.create({name: "Monster Merchant"})
    assert_equal true, merchants.any? { |merchant| merchant.name == "Monster Merchant" }
    assert_equal true, merchants.one? { |merchant| merchant.name == "Monster Merchant" }

    new_merchant = merchants.detect { |merchant| merchant.name == "Monster Merchant" }
    refute_nil new_merchant.id
    assert_equal true, merchants.one? { |merchant| merchant.id == new_merchant.id }
  end

  def test_it_can_remove_a_merchant_record_from_the_collection
    merchants = @merchant_collection.all
    assert_nil @merchant_collection.find(34)

    @merchant_collection.update({id: 34, name: "New Merchant Name"})
    assert_equal true, merchants.one? { |merchant| merchant.id == 34 }
    assert_equal false, merchants.none? { |merchant| merchant.id == 34 }
    refute_nil @merchant_collection.find(34)

    @merchant_collection.destroy(34)
    assert_equal false, merchants.one? { |merchant| merchant.id == 34 }
    assert_equal true, merchants.none? { |merchant| merchant.id == 34 }
    assert_nil @merchant_collection.find(34)
  end

  def test_it_can_update_a_merchant_name
    merchants = @merchant_collection.all
    assert_nil @merchant_collection.find(34)

    @merchant_collection.update({id: 34, name: "New Merchant Name"})
    refute_nil @merchant_collection.find(34)

    assert_instance_of Merchant, @merchant_collection.find(34)
    assert_equal true, merchants.one? { |merchant| merchant.name == "New Merchant Name" && merchant.id == 34 }

    merchant_before_update = @merchant_collection.find(12334112)
    assert_equal "Candisart", merchant_before_update.name

    @merchant_collection.update({id: 12334112, name: "The Best Merchant"})
    merchant_after_update = @merchant_collection.find(12334112)
    assert_equal "The Best Merchant", merchant_before_update.name
  end

end
