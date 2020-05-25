require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantCollectionTest < Minitest::Test

  def setup
    @monster_merchant = Merchant.new({name: "Bobbi Jaeger", id: 34})

  end

  def test_it_exists

    assert_instance_of Merchant, @monster_merchant
  end
