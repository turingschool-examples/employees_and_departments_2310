class Employee
  attr_reader :name,
              :age,
              :salary

  def initialize(employee)
    @name = employee[:name]
    @age = employee[:age]
    @salary = employee[:salary]  # or @salary = []
  end

  def give_raise(raise)
    # @salary = []
    @salary << @salary += raise   # do I need to access @salary on right of shovel as:  employee[:salary] += raise
  end
    # @salary 
end