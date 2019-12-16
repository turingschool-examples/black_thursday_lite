require 'csv'

class MerchantCollection

  attr_reader :id, :name

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
  end

  def all
    CSV.read("merchants.csv")
  end
end
