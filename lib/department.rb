class Department

  attr_reader :Department

  def initialize(department)
    @department = department
    @employees = []
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
end