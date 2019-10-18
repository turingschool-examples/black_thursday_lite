require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'

class MerchantsTest < Minitest::Test

  def setup
    @shopin109 = MerchantsCollection.new(2334105, "Shopin1901", 2010-12-10, 2011-12-04)
  end

  def test_merchant_exists
    assert_instance_of MerchantsCollection, @shopin109
  end

  def test_merchant_has_attributes
    assert_equal 2334105, @shopin109.id
    assert_equal "Shopin1901", @shopin109.name
    assert_equal 2010-12-10, @@shopin109.created_at
    assert_equal 2011-12-04, @@shopin109.updated_at
  end
end
