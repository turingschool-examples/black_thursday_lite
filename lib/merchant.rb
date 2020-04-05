class Merchant

  attr_reader :id
  attr_accessor :name
  def initialize(information)
    @id = information[:id]
    @name = information[:name]
  end

end
