require './lib/merchant'
class SalesEngine
  attr_reader :items, :merchants, :merchant_collection
  def initialize(merchants, items)
    @items = items
    @merchants = merchants
    @merchant_collection = []
  end


  def self.from_csv(data)
    merchants = data[:merchants]
    items = data[:items]
    SalesEngine.new(merchants, items)
  end

  def merchant_collection
    # merchant1 = mock('merchant1')
    # merchant2 = mock('merchant2')
    # merchants =
    CSV.foreach(@merchants) do |row1|

      @merchant_collection << Merchant.new({:id => row1[0], :name => row1[1]})
      require "pry"; binding.pry
    #puts row1.inspect
    end
  end
end
