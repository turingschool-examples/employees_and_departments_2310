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
    @salaries = []

    @departments.each do |department|
      department.employees.each do |employee|
        @salaries << employee.salary
      end
    end
    @salaries
  end

  def current_expenses_by_department
    @current_expenses = []

    @departments.each do |department|
      @current_expenses << department.expenses
    end
    @current_expenses
  end
end