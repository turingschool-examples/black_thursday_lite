require 'csv'

class Merchant_Collection
  attr_reader :merchants

  def initialize
    @merchants = []
  end

  def add_merchants

    CSV.foreach('./data/merchants.csv', headers: true) do |row|
      @merchants << row
    end
  end

end

#The MerchantCollection is responsible for holding and searching our Merchant instances. It offers the following methods:

#all - returns an array of all known Merchant instances
#find() - returns either nil or an instance of Merchant with a matching ID
#The data can be found in data/merchants.csv so the instance is created and used like this:

#sales_engine = SalesEngine.from_csv({
#  :items     => "./data/items.csv",
#  :merchants => "./data/merchants.csv",
#})

#merchant_collection = sales_engine.merchant_collection
#merchant = merchant_collection.find(34)
# => <Merchant>
#merchants = merchant_collection.all
# => [<Merchant>, <Merchant>...]
