class Merchant

  attr_reader :id, :name

  def initialize(merchant_items)
    @id = merchant_items["id"]
    @name = merchant_items["name"]
    # @created_at = merchant_items[:created_at]
    # @updated_at = merchant_items[:updated_at]
  end
end
