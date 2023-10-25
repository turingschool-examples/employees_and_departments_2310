class Department
  attr_reader :name
  
  def initialize(name)
    @name = name
    @employees = [] 
  end

  def hire
    @employees << @employees += 1
  end
end