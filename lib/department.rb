class Department
  attr_reader :name,
              :employees,
              :expenses


  def initialize(data) 
    @name = data
    @employees = []
    @expenses = 0
  end

  def hire(name)
    @employees << name
  end

  def expense(cost)
    @expenses += cost
  end
end