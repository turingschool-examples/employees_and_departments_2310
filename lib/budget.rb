class Budget
  attr_reader :year,
              :departments
  def initialize(data)
    @year = data[:year]
    @departments = []
  end

  def add_department(department)
    @departments << department
  end
end