class Merchant
  attr_reader :id,
              :name

  def initialize(items)
    @id = items[:id]
    @name = items[:name]
  end
end
