class Employee

  attr_reader :name, :age, :salary

  def initialize(employee_data)
    @name = employee_data[:name]
    @age = employee_data[:age]
    @salary = employee_data[:salary]
  end

  def give_raise(amount)
    @salary += amount
  end

end