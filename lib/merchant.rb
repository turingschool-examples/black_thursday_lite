class Merchant
  attr_reader :id, :name

  def initialize(merchant_info)
    @name = merchant_info[:name]
    @id = merchant_info[:id]
  end
end 
