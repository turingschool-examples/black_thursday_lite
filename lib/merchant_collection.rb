require 'csv'

class MerchantCollection
  attr_reader :csv, :merchants

  def initialize(csv)
    @csv = csv
    @merchants = rows.reduce([]) do |merchants, row|
      merchants << Merchant.new(row)
      merchants
    end
  end

  def rows
    CSV.read(@csv, headers: true, header_converters: :symbol)
  end

  def all
    @merchants
  end

  def find(id)
    all.find do |merchant|
      merchant.id == id
    end
  end

  def find_by_name(name)
    all.find do |merchant|
      merchant.name.downcase == name.downcase
    end
  end

  def create(merchant_params)
    @merchants << Merchant.new(merchant_params)
  end

  def update(merchant_params)
    find(merchant_params[:id]).name = merchant_params[:name]
  end

  def destroy(id)
    merchant = find(id)
    all.delete(merchant)
  end


end
