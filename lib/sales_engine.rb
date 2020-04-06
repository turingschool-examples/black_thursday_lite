
class Sales_engine

  def initialize sales_engine = SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
  })
  end

sales_engine.item_collection

end
