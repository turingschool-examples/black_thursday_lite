class MerchantCollection
  attr_reader :merchant_csv_data,
              :merchants

  def initialize(merchants_csv_data)
    @merchant_csv_data = "./data/merchants.csv"
    @merchants = []
  end

  def all
    CSV.foreach(@merchant_csv_data, headers: true, header_converters: :symbol) do |row|
      specific_merchant_attributes = {
        :id => row[:id].to_i,
        :name => row[:name],
        :created_at => row[:created_at],
        :updated_at => row[:updated_at]
      }

      @merchants << Merchant.new(specific_merchant_attributes)
    end
    @merchants
  end

  def find(id)
    @merchants.find do |merchant|
      if id == merchant.id
        return merchant
      end
    end
  end

  # def create(merchant_data)
  #   @merchants << Merchant.new(merchant_data)
  # end
end
