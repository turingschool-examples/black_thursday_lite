class Item

  def initialize(row)
    @id = row["id"]
    @name = row["name"]
    @description = row["description"]
    @unit_price = row["unit_price"]
    @created_at = row["created_at"]
    @updated_at = row["updated_at"]
  end



end
