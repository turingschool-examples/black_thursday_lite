class Merchant
  attr_reader :id, :name

  def initialize(file_info)
    @id = file_info[:id]
    @name = file_info[:name]
  end

end
