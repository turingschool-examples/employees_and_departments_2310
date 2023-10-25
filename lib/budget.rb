class Budget
  attr_reader :year

  def initialize(year)
    @year = year
    @departments = []
  end

end