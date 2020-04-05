require './lib/merchant'

class MerchantCollection
  attr_reader :all

  def initialize(all_merchants)
    @all = all_merchants
  end

  def find(id)
    @all.find do |merchant|
      merchant.key(id)
    end
  end
end
 #  `create({name: 'Monster Merchant'})` - This should create a new instance of Merchant with a unique ID, and store it in our Merchant Collection.
 #
 # * `update({id: 34, name: 'New Merchant Name'})` - this should change the name of the Merchant instance to the given value.
 #
 # * `destroy(34)` - This should remove the merchant with the given id from the Merchant Collection.
