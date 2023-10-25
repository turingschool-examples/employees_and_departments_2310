require_relative './department'

class Budget
  
  attr_reader :year, :departments
  
  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def departments_with_low_expenses
    departments_with_min_budget = @departments.select { |department| department.expenses <= 500}
    return departments_with_min_budget
  end

  def employee_salaries
    salaries = []

    @departments.each do |department|
    end
  end

end