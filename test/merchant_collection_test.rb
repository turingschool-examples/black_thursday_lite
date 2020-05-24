require 'minitest/autorun'
require 'mintiest/pride'
require './lib/merchant_collection'

class MerchantCollectionTest < MiniTest::Test
  def test_it_exists
    
  end
end
=begin

id,name,created_at,updated_at
12334105,Shopin1901,2010-12-10,2011-12-04
12334112,Candisart,2009-05-30,2010-08-29
12334113,MiniatureBikez,2010-03-30,2013-01-21
12334115,LolaMarleys,2008-06-09,2015-04-16

=end

### `Merchant`

# The merchant is one of the critical concepts in our data hierarchy.
#
# *   `id` - returns the integer id of the merchant
# *   `name` - returns the name of the merchant
#
# We create an instance like this:
#
# ```ruby
# merchant = Merchant.new({:id => 5, :name => "Turing School"})
# ```
#
# ### `MerchantCollection`
#
# The `MerchantCollection` is responsible for holding and searching our `Merchant`
# instances. It offers the following methods:
#
# *   `all` - returns an array of all known `Merchant` instances
# *   `find()` - returns either `nil` or an instance of `Merchant` with a matching ID
#
# The data can be found in `data/merchants.csv` so the instance is created and used like this:
#
# ```ruby
# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
#
# merchant_collection = sales_engine.merchant_collection
# merchant = merchant_collection.find(34)
# # => <Merchant>
# merchants = merchant_collection.all
# # => [<Merchant>, <Merchant>...]
# ```
