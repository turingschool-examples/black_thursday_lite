class SalesEngine

  def initialize
    @items = nil
    @merchants = nil
  end

  def self.from_csv(csv_params)
    @items = csv_params[:items]
    @merchants = csv_params[:merchants]
  end

  def item_collection
    ItemCollection.new(@items)
  end

  def merchant_collection
    MerchantCollection.new(@merchants)
  end

  def all
    @merchants
  end

  def find(id_param)
  end

end
