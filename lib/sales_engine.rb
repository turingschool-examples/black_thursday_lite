# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })

class SalesEngine
  def self.from_csv(detail_params)
    @items = CSV.read(detail_params[:items])
  end
end
