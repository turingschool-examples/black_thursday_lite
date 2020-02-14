class ItemCollection

  def initialize(item_list)
    @item_list = item_list
  end

  def all
    @item_list
  end

  # def where(merchant_id)
  #   @item_list.find_all { |item| item.merchant_id == merchant_id }
  # end

  def where(item_search_params)
    key_param = item_search_params.keys[0]
    value_param = item_search_params.values[0]
    @item_list.find_all do |item|
      require "pry"; binding.pry
       item.(key_param) == value_param
     end
  end
end
