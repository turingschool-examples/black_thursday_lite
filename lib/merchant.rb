class Merchant
  attr_reader :id, :name

  def initialize(merchant_param)
    @id = merchant_param[:id]
    @name = merchant_param[:name]
  end
end
