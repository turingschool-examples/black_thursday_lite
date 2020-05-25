class Merchant
  attr_reader :id, :name

  def initialize(merchant_information)
    @id = merchant_information[:id]
    @name = merchant_information[:name]
  end

  def update_name(new_name)
    @name = new_name
  end

end
