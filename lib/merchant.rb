class Merchant
  attr_reader :name, :id

  def initialize(**attr)
    @name = attr[:name]
    @id = attr[:id]
  end
end
