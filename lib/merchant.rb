class Merchant
  attr_reader :id, :name
  
  def initialize(merchant_info)
    @id = merchant_info[0] || merchant_info[:id]
    @name = merchant_info[1] || merchant_info[:name]
    @created_at = merchant_info[2] || merchant_info[:created_at]
    @updated_at = merchant_info[3] || merchant_info[:updated_at]
  end
end