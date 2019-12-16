require_relative './merchant'

class MerchantCollection

  def initialize(path)
    @path = path
  end

  def find(id)
    list = all
    list.find do |merchant|
      merchant.id == id
    end
  end

  def all
    list_merchants = []
    CSV.foreach(@path) do |row|
      if row[0] != 'id'
        list_merchants << Merchant.new({id: row[0].to_i, name: row[1]})
      end
    end
    list_merchants
  end

  def merchants_id
    all.map {|merchant| merchant.id}
  end

  def create(attributes)
    id = rand(99999)
    while merchants_id.include?(id)
      id = rand(99999)
    end
    time = Time.new 
    created_at = time.strftime("%Y-%m-%d")
    updated_at = time.strftime("%Y-%m-%d")
    new_entry = [id, attributes[:name], created_at, updated_at]
    require 'pry'; binding.pry
    CSV.open(@path, 'w') do |object|
      object << new_entry
    end
    require 'pry'; binding.pry
    # new_merchant = Merchant.new({name: attributes[:name], id: id})
    # all << new_merchant
    # new_merchant
  end

end