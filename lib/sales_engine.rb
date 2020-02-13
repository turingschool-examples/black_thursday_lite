require 'csv'

class SalesEngine

  def self.from_csv(info_params)
    @items_collections = []
    CSV.foreach(info_params[:items], headers: true, header_converters: :symbol ) do |row|
      item = Item.new()

    end
  end


end
