

class SalesEngine

  attr_reader :merchants, :items

  def initialize(merchants, items)
    @merchants = merchants
    @items = items
  end
  #

  def self.from_csv(path_info)
    merchant_param = MerchantCollection.new
  # sales_engine = self.from_csv({
  #   :items     => "./data/items.csv",
  #   :merchants => "./data/merchants.csv",
  # })
  end
end
