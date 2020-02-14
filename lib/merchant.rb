class Merchant

  attr_reader :id
  attr_accessor :name

  def initialize(arguments)
    @id = arguments[:id]
    @name = arguments[:name]
  end

  # def name=(new_name)
  #   @name = new_name
  # end

end
