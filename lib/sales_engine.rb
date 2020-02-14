class SalesEngine
  attr_reader :items,
              :merchants

  def initialize(sales_params)
    @items = sales_params[:items]
    @merchants = sales_params[:merchants]
  end

  def self.collect_sales
    self.from_csv do |data|
      require "pry"; binding.pry
    end
  end
end
