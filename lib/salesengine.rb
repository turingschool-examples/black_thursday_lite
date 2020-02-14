class SalesEngine

  def self.from_csv(files)
    CSV.foreach(files) do |row|
      item = Item.new([:items])
      merchant = Item.new([:merchants])
    end
  end

end
