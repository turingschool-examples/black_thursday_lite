class Merchant

  attr_reader :id, :name

  def initialize(details)
    @id = details[0].to_i
    @name = details[1]
  end

end
