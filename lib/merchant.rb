class Merchant
  attr_reader :id, :name

  def initialize(merchant)
    @id = merchant[:id]
    @name = merchant[:name]
  end

  def update(name)
    @name = name
  end

end
