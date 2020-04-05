require 'CSV'

class Merchant

  attr_accessor :name
  attr_reader :id
  def initialize(init_hash)
    @id = init_hash[:id]
    @name = init_hash[:name]
  end
end
