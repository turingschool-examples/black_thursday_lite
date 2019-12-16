class SalesEngine
  def self.from_csv(atts = {})
    CSV.foreach(atts[:merchants], {headers: true} ) do |row|
      Merchant.new(row)
    end
    CSV.foreach(atts[:items], {headers: true} ) do |row|
      require "pry"; binding.pry
      Item.new(row)
    end
  end
end
