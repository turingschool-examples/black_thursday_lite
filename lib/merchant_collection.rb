require "CSV"

class MerchantCollection
    attr_reader :merchant_collection

    def initialize
      @merchant_collection = []
    end

    def add_merchant(merchant_data)
      merchant = Merchant.new(merchant_data)
      @merchant_collection << merchant
    end

    def all
      @merchant_collection
    end

    def find(id)
      all.find{|merch| merch.id.to_i == id}
    end
    
end
