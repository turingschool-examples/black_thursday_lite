class Merchant
  
  attr_reader :id, :name

  def initialize(file_info)
    @id = file_info[:id].to_i
    @name = file_info[:name]
  end

end
