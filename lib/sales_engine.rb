class SalesEngine
  attr_reader :items, :merchants

  def initialize(sales_engine_param)
    @items = sales_engine_param[:items]
    @merchants = sales_engine_param[:merchants]
  end

  def self.from_csv(items_merchant_params)
    Item.new(items_merchant_params[:items])
    Merchant.new(items_merchant_params[:merchants])
  end
end
