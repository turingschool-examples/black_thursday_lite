class Merchant
  attr_reader :info,
              :id,
              :name

  def initialize(info)
    @info = info
    @name = info[:name]
    @id = info[:id]
  end
end
