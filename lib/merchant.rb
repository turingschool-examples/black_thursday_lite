class Merchant
  attr_reader :id, :name 

  def initialize(attribute)
    @id = attribute[:id]
    @name = attribute[:name]
  end

end
