class Merchant
  attr_reader :id
  attr_accessor :name

  def initialize(**attr)
    @name = attr[:name]
    @id = attr[:id]
  end
end
