class ItemCollection

  def initialize(path)
    @path = path
    @item_collection = []
  end

  def item_collection
    CSV.foreach(@path, headers: true, header_converters: :symbol) do |item|
      @item_collection << item
    end
    @item_collection
  end

end
