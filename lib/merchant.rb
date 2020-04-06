class Merchant
  attr_reader :id, :name

  def initialize(merchant_parameter)
    @id = merchant_parameter[:id]
    @name = merchant_parameter[:name]
  end
end
