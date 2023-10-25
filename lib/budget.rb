

class Budget

  attr_accessor :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def departments_with_low_expenses
    low_exp_array = []
      @departments.each do |department|
        if department.expenses < 500
          low_exp_array << department
        end
      end
    low_exp_array
  end

  def employee_salaries
    employee_salary_array = []
    @departments.each do |department|
      (department.employees).each do |employee|
        employee_salary_array << employee.salary
      end
    end
    employee_salary_array
  end

  def current_expenses_by_department
    dept_expenses = Hash.new(0)
    @departments.each do |department|
      dept_expenses[department.name] = department.expenses
    end
    dept_expenses
  end
end