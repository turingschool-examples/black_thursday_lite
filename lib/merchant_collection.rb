require "./lib/merchant"
class MerchantCollection
  attr_reader :file_path, :merchants

  def initialize(file_path)
    @file_path = file_path
    @merchants = []
  end

  def instantiate_merchant(input)
    Merchant.new(input)
  end
end
