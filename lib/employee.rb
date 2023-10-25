class Employee
    attr_accessor :name, :age, :salary

    def initialize(employee)
        @name = employee[:name]
        @age = employee[:age]
        @salary = employee[:salary]
    end


    def give_raise(amount_of_raise)
        # Integer(@salary) = new_salary
        # @salary to_i = new_salary
        new_salary = @salary.to_i
        @salary = new_salary + amount_of_raise
    end


end