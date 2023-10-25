class Department

  attr_reader :expenses

  def initialize(department)
    @department = department
    @employees = []
    @expenses = 0
  end

  def name
    @department
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