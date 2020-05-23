require 'csv'
# require "pry"; binding.pry
class SalesEngine

  @@items = './data/items.csv'
  @@merchants = './data/merchants.csv'

  CSV.foreach(@@items, headers: true) do |row|
    puts row
  end


  def self.from_csv(arguement)
    @item = arguement[:items]
  end
end
