class Merchant

  attr_reader :id
  attr_accessor :name, :created_at, :updated_at
  def initialize(details)
    @id = details[:id]
    @name = details[:name]
    @created_at = details[:created_at]
    @updated_at = details[:updated_at]
  end

end
