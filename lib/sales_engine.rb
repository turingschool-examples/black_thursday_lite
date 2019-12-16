# require './data/items.csv'
# require './data/merchants.csv'

class SalesEngine
  attr_accessor :data_set, :items, :merchants

  def initialize(data_set)
    @data_set = data_set
    @items = data_set[:items]
    @merchants = data_set[:merchants]
  end


  # def from_csv(data)
  # Items_Header = id, name, description, unit_price, merchant_id, created_at, updated_at
  # Merchants_Header = id, name, created_at, updated_at
  #   new_class = data.keys
  #   new_file_paths = data.keys.values
  #
  #
  # end
end
