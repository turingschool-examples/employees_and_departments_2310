require './lib/department'
require './lib/employee'

class Budget
  attr_reader :departments
  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(name)
    @departments << name
  end

  def departments_with_low_expenses
    low_expense_offices = []
    @departments.each do |department|
      if department.expenses < 500
        low_expense_offices << department
      end
    end
    return low_expense_offices
  end

  def employee_salaries
    salaries = []
    @departments.each do |department|
      salaries << department.employees.data[:salary]
    end
    return salaries
  end
end
