class MerchantCollection
  attr_reader :id,
              :name

  def initialize(merchant_info)
    @name = merchant_info[:name]
    @id = merchant_info[:id]
  end

  def find(merchant_id)
    # take list of merchants
    #   merchant_info.find { |merchant| merchant_info[:id] == merchant_id }
    #     returns nil if the ID does not exist there
    
  end

  def all
    # print array of merchants from the original list
  end
end