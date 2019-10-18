require 'csv'
class SalesEngine


  def self.from_csv(data)

    row = CSV.parse_line(data)
    require 'pry'; binding.pry
  end

  
end
