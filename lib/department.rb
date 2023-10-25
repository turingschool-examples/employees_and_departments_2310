class Department
  attr_reader :name,
              :employees

  def initialize(data) 
    @name = data
    @employees = []
  end
end