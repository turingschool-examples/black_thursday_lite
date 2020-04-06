class SalesEngine
    attr_reader :item_collection

  def self.all
    @item_collection = item_collection
  end

  def self.from_csv(csv_data)
    @csv_data = csv_data
  end

  def item_collection
    @item_collection
  end
end
