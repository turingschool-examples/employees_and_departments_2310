class Budget

  attr_reader :year, :departments

  def initialize
    @year = 0
    @departments = []
  end

  def year
    @year = 2023
  end

  def departments
    @departments
  end

  def add_department(department)
    @departments << department
  end

  def add_departments_with_low_expenses(value)
    if department.expenses < 500
    @departments << department
  end

end