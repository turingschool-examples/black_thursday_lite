require "csv"
require "./lib/merchant"

class MerchantCollection

  def initialize(sales_engine_input)
    @merchants_csv = sales_engine_input
    @merchants = []
  end

  def all
    if @merchants.empty?
      CSV.foreach(@merchants_csv, headers: true) do |row|
        id = row["id"].to_i
        name = row["name"]
        @merchants << Merchant.new({:id => id, :name => name})
      end
    end
    @merchants
  end

  def find(search_id)
    all.find do |merchant|
      merchant.id == search_id
    end
  end

  def create(new_merchant_information)
    name = new_merchant_information[:name]
    max_id = (all.max_by { |merchant| merchant.id }).id
    next_id = max_id + 1
    @merchants << Merchant.new({:name => name, :id => next_id})
  end

  def update(updated_merchant_information)
    name = updated_merchant_information[:name]
    id = updated_merchant_information[:id]
    merchant_to_update = find(id)
    merchant_to_update.update_name(name) unless merchant_to_update == nil
    @merchants << Merchant.new(:name => name, :id => id) if merchant_to_update == nil
  end

  def destroy(id_of_merchant_to_remove)
    merchant_to_remove = find(id_of_merchant_to_remove)
    @merchants.delete(merchant_to_remove)
  end

end
