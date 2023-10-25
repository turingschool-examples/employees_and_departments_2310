class Employee

  attr_reader :name, :age, :salary, :employee_data

  def initialize(employee_data)
    @name = employee_data[:name]
    @age = employee_data[:age]
    @salary = employee_data[:salary]
  end

  def age
    @age.to_i
  end

  def give_raise(raise_amount)
    @salary = @salary.gsub('$', '').to_i + raise_amount
  end
end
