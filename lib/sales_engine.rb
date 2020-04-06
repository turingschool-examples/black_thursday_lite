require './lib/merchant'

class SalesEngine
  attr_reader :items, :merchants

  def initialize(sales_engine_parameter)
    @items = sales_engine_parameter[:items]
    @merchants = sales_engine_parameter[:merchants]
    @merchant_collection = []
  end

  def self.from_csv(data)
    # merchants = data[:merchants]
    # items = data[:items]
      SalesEngine.new(data)
  end

  def merchant_collection
    merchants = []
    CSV.foreach(@merchants, headers: true, header_converters: :symbol) do |row|
      merchants << Merchant.new(row)
    end
    MerchantCollection.new(merchants)
  end

end
