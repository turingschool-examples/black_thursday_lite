class Merchant
  attr_reader :id,
              :name,
              :created_at,
              :updated_at

  def initialize(merchant_details)
    @id = merchant_details[:id]
    @name = merchant_details[:name]
    @created_at = merchant_details[:created_at]
    @updated_at = merchant_details[:updated_at]
  end

end
