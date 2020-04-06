class Merchant
  attr_reader :id, :name

def initialize(merch_info)
  @id = merch_info[:id]
  @name = merch_info[:name]
end

end
