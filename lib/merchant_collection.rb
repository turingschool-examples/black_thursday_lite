require 'csv'

class MerchantCollection

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.create_multiple_items(file_path)
    merchants = []
    CSV.foreach(file_path, headers: true) do |row|
      merchants << MerchantCollection.new(row['id'], row['name'])
    end
    merchants
  end

end
