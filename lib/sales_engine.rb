require 'csv'

class SalesEngine
  def self.from_csv(data_information_hash)
    items_directory_location = data_information_hash[:items]
    merchants_directory_location = data_information_hash[:merchants]
    data_information_hash[:items] = []
    data_information_hash[:merchants] = []

    CSV.foreach(items_directory_location) do |row|
      data_information_hash[:items] << row
    end

    CSV.foreach(merchants_directory_location) do |row|
      data_information_hash[:merchants] << row
    end

    return data_information_hash
  end
end

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

p sales_engine.merchants
