require_relative 'sales_engine'

class MerchantCollection
  def initialize(path)
    @path = path
  end

  def all
    @all = Array.new
    CSV.foreach("data/animal_lovers.csv") do |row|
      @all << row
    end
  end
end