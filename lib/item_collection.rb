require 'csv'

class ItemCollection

  def initialize(csv_path)
    @csv_path = csv_path
  end

  def create(csv_path = @csv_path)
    @items = []
    CSV.foreach(@csv_path, headers: true, header_converters: :symbol) do |row|
      @items << row
    end
  end

end
