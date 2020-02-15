class ItemCollection
  attr_reader :file_path, :items 

  def initialize(file_path)
    @file_path = file_path
    @items = []
  end
end
