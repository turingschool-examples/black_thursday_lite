class SalesEngine

  def initialize
    @items = nil
    @merchants = nil
  end

  def self.from_csv(csv_params)
    @items = csv_params[:items]
    @merchants = csv_params[:merchants]
  end

end
