require 'csv'

class SalesEngine
  attr_reader :items, :merchants

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end


  def self.from_csv(data)
    binding.pry
    items = data[:items]
    merchants = data[:merchants]
  end

end

class Merchant
  attr_reader :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end


end
