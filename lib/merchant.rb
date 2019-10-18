require 'csv'

class Merchant
  attr_reader :id,
              :name,
              :created_at,
              :updated_at

  def initialize (merchant_info)
    @id = id
    @name = name
    @created_at = created_at
    @updated_at = updated_at
  end
end
