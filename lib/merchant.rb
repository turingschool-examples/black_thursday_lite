class Merchant
  attr_reader :id
  attr_accessor :name
  
  def initialize(hash_parameter)
    @id = hash_parameter[:id].to_i
    @name = hash_parameter[:name]
  end
end
