class Merchant
  attr_reader :name, :id
  def initialize(info)
    @name = info[:name]
    @id = info[:id].to_i
  end




end
