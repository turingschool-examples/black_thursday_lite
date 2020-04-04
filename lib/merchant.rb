require 'CSV'

class Merchant

  attr_reader :id, :name
  def initialize(init_hash)
    @id = init_hash[:id]
    @name = init_hash[:name]
  end

end
