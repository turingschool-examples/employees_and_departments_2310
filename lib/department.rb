class Department
  attr_reader :name,
              :employees

  def initialize(data) 
    @name = data
    @employees = []
  end

  def hire(name)
    @employees << name
  end
end