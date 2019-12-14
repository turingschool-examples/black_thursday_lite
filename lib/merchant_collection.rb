require './lib/merchant'

class MerchantCollection
  attr_reader :merchants_filepath

  def initialize(merchants_filepath)
    @merchants_filepath = merchants_filepath
  end
end
