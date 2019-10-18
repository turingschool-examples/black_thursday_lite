require 'csv'

class Item
  attr_reader :item_array
  def initialize(data_file)
    @data_file = data_file
    @item_array = []
  end

  def read_it
    # @item_array
    self.from_csv(@data_file) do |line|
      @item_array << line
    end
    @item_array
  end
end
