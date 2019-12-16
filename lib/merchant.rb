require './lib/merchant_collection'

class Merchant

  attr_reader :id, :name

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @created_at = attributes[:created_at]
    @updated_at = attributes[:updated_at]
  end
end
