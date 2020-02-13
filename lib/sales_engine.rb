class SalesEngine
  attr_reader :items,
              :merchants
  def initialize(sales_params)
    @items = sales_params[:items]
    @merchants = sales_params[:merchants]
  end


end
