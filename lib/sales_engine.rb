class SalesEngine

  def self.from_csv(data_hash)
    data_hash.foreach("./data/items.csv", "./data/merchants.csv") do |row|
      

  end


end