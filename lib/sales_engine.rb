# This class needs to load and parse the data
# The data is parsed into objects

class SalesEngine

  def items
    CSV.foreach("./data/items.csv", headers: true) do |row|
      # make each row into a CSV object
      # like a zipped up header + values
    end
  end

  def merchants
    CSV.foreach("./data/merchants.csv", headers: true) do |row|
      # make each row into a CSV object
      # like a zipped up header + values
    end
  end


  def self.from_csv(information)
  end

end
