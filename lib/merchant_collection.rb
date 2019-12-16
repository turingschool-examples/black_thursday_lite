class MerchantCollection
  def initialize(path)
    @path = path
  end

  def open
    merchants = CSV.read(@path)
    require 'pry'; binding.pry
  end

end
