class Merchant
  attr_reader :name, :id
  def initialize(merchant_param)
    @name = merchant_param[:name]
    @id = merchant_param[:id]
  end
  
end
