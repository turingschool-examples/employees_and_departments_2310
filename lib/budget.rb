

class Budget

  attr_accessor :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def departments_with_low_expenses
    low_exp_array = []
      @departments.each do |department|
        if department.expenses < 500
          low_exp_array << department
        end
      end
    low_exp_array
  end


end