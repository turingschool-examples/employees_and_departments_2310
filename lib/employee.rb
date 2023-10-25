class Employee
  attr_reader :name, :age, :salary

  def initialize(employee_details)
    @name = employee_details[:name]
    @age = employee_details[:age]
    @salary = employee_details[:salary]
  end

end