class Merchant
  attr_reader :id, :name
  
  def initialize(merchant)
    @id = merchant[0]
    @name = merchant[1]
    @created_at = merchant[2]
    @updated_at = merchant[3]
  end
end