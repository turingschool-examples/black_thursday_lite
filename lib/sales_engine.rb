require 'csv'
class SalesEngine

  @@items = './data/items.csv'
  @@merchants = './data/merchants.csv'

  CSV.foreach(@@items, headers: true, header_converters: :symbol) do |row|
    require "pry"; binding.pry
    puts row
  end

  def self.from_csv(arguement)
    @item = arguement[:items]
  end

end
