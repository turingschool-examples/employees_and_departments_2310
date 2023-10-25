class Employee
  attr_reader :name,
              :age,
              :salary

  def initialize(employee)
    @name = employee[:name]
    @age = employee[:age]
    @salary = employee[:salary]
  end

#   def give_raise(raise)

#     @salary << salary += raise 
#   end
# end