require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

require 'pry'

class MerchantCollectionTest < Minitest::Test


  def test_it_exists
    merchant_collection = sales_engine.merchant_collection
  end 
merchant = merchant_collection.find(34)
# => <Merchant>
merchants = merchant_collection.all
# => [<Merchant>, <Merchant>...]

end
