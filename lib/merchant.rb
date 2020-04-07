require "csv"

class Merchant

  @@all = []

  def self.all
    @@all
  end

  def self.from_csv(file_path)
    csv = CSV.read("#{file_path}", headers: true, header_converters: :symbol)

    @@all = csv.map do |row|
      Merchant.new(row)
    end
  end

  def self.find(merchant_id)
    @@all.find do |merchant|
      merchant.id == merchant_id
    end
  end

  attr_reader :id,
              :name

  def initialize(merchant_params)
    @id = merchant_params[:id].to_i
    @name = merchant_params[:name]
  end
end
   #  `create({name: 'Monster Merchant'})` - This should create a new instance of Merchant with a unique ID, and store it in our Merchant Collection.
   #
   # * `update({id: 34, name: 'New Merchant Name'})` - this should change the name of the Merchant instance to the given value.
   #
   # * `destroy(34)` - This should remove the merchant with the given id from the Merchant Collection.
