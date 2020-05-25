require 'CSV'

class SalesEngine
   attr_reader :items,
               :merchants

  def initialize(items, merchants)
    @items = sales_engine_params[:items]
    @merchants = sales_engine_params[:merchants]
  end

  def self.from_csv(data)
    self.new(data)
  end
end
