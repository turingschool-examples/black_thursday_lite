class MerchantCollection
  attr_reader :merchants
  def initialize
    @merchants = []
  end


  def method_name
    CSV.foreach('./data/merchants.csv') do |row1|
      @merchants << Merchant.new({:id => row1[0], :name => row1[1]})
      require "pry"; binding.pry
    #puts row1.inspect
    end
  end
    #returns an array of all known `Merchant` instances


  def find(merchant_id)
    #returns either `nil` or an instance of `Merchant` with a matching ID
  end
end
