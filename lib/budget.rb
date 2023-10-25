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
    departments_with_low_expenses = []

    departments.find_all do |department|
      departments_with_low_expenses << department if department.expenses <= 500
    end
    departments_with_low_expenses
  end

  # def employee_salaries
  #   employee_salaries = []
  #   department_employees = []

  #   departments.map do |department|
  #     department_employees << department.employees
  #   end

  #   department_employees.map do |employee|
  #     employee_salaries << employee.salary # fix
  #   end
  #   employee_salaries
  # end

  def current_expenses_by_department
    current_expenses_by_department = {}
    current_expenses_by_department[:department]

    departments.map do |department|
      department_expenses = department.expenses
      current_expenses_by_department[department] = department_expenses
    end

  end

end