require 'csv'

class Merchant
  attr_reader :id,
              :name,
              :created_at,
              :updated_at
  def initialize(merchant_data)
    @id = merchant_data["id"]
    @name = merchant_data["name"]
    @created_at = merchant_data["created_at"]
    @updated_at = merchant_data["updated_at"]
  end

  def method
  end
end


class MerchantCollection
  attr_reader :merchant_coll

  def initialize(merchant_coll)
    @merchant_coll = merchant_coll
  end

  def find(merch_id)
    @merchant_coll.find do |merchant|
      merchant.id == merch_id
    end
  end


end



class SalesEngine
  def initialize(merchantCollectionInstance)
    @merchantCollectionInstance = merchantCollectionInstance
  end

  def self.from_csv(locationHash)
    merchantCollectionInstance = self.parseMerchant(locationHash[:merchants])
    sales_engine = SalesEngine.new(merchantCollectionInstance)
    #=> instance of SalesEngine

  end

  def self.parseMerchant(csv_location)
    merchants = []
    CSV.foreach(csv_location, headers: true) do |row|
      merchant = Merchant.new(row)
      merchant.method
      merchants << merchant
    end
    MerchantCollection.new(merchants)

  end

  def merchant_collection
    @merchantCollectionInstance
  end
  # def self.parseItem(csv)
  #   CSV.foreach("../data/merchants.csv", headers: true) do |row|
  #     merchant = Merchant.new(row)
  #     merchant.method
  #     merchants << merchant
  #   end
  # end

end


sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "../data/merchants.csv",
})


merchant_collection = sales_engine.merchant_collection
# => <#MerchantCollection>
merchant = merchant_collection.find("12334132")
require "pry"; binding.pry
# => <Merchant>
merchants = merchant_collection.all
# => [<Merchant>, <Merchant>...]
