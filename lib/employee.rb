
class Employee
  
  attr_accessor :name, :age, :salary

  def initialize(name, age, salary)
    @name = name
    @age = age.to_i
    @salary = salary.to_i
  end

  def give_raise(raise)
    @salary += raise
  end





end