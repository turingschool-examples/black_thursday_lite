class Merchant

  def initialize(row)
    @id = row["id"]
    @name = row["name"]
    @created_at = row["created_at"]
    @updated_at = row["updated_at"]
  end
end
