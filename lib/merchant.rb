class Merchant
  attr_reader :id,
              :name
  def initialize(merchant_params)
    @id = merchant_params[:id]
    @name = merchant_params[:name]
  end
end
