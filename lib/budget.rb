require './lib/department'
require './lib/employee'

class Budget
  attr_reader :departments
  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(name)
    @departments << name
  end
end
