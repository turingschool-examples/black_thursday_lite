class Merchant
  attr_reader :id, :name, :created_at, :updated_at

  def initialize(merchant_info)
    @id = merchant_info[:id]
    @name = merchant_info[:name]
    @created_at = merchant_info[:created_at]
    @updated_at = merchant_info[:updated_at]
  end

end
