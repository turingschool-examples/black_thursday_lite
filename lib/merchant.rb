class Merchant

  attr_reader :id, :name
  attr_writer :name

  def initialize(params)
    @id = if params[:id].nil?
      rand(100)
    else
      params[:id].to_i
    end

    @name = params[:name]
  end

end
