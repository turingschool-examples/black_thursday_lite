require 'CSV'

class SalesEngine

  attr_reader :items,
              :merchants

  def initialize
    @items = nil
    @merchants = nil
  end

  def self.from_csv(sales_engine_params)
    @items = sales_engine_params[:items]
    @merchants = sales_engine_params[:merchants]
  end

  def merchant_collection

  end
end
