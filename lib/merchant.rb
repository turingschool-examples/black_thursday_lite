class Merchant
  attr_reader :id
  attr_accessor :name

  def initialize(info_params)
    @id = info_params[:id]
    @name = info_params[:name]
  end
end
