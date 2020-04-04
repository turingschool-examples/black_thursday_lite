require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant
  end

end
