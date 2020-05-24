class SalesEngine
  def from_csv(info_hash)
    @items = info_hash[:items]
    @merchants = info_hash[:merchants]
  end
end
