# NOT YET RUNNING
require 'csv'

class SalesEngine
  attr_reader :items, :merchants
  @@items_file = './data/items.csv'
  @@merchants_file = './data/merchants.csv'

  def initialize(sales_engine_params)
    @items = sales_engine_params[:items]
    @merchants = sales_engine_params[:merchants]
  end
end
