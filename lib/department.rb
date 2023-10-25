class Department

  attr_reader :expenses
  attr_accessor :department

  def initialize(department_name)
    @department_name = department_name
    @employees = []
    @expenses = 0
  end

  def name
    @department_name
  end

  def employees
    @employees
  end

  def hire(employee)
    @employees << employee
  end

  def expense(expense_cost)
    @expenses += expense_cost
  end
end