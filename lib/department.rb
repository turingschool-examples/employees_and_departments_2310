
class Department

attr_accessor :name, :employees, :expenses

def initialize(name)
  @name = name
  @employees = []
  @expenses = 0
end

def hire(employee)
  @employees << employee
end




end
