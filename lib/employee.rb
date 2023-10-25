class Employee
    attr_accessor :name, :age, :salary

    def initialize(employee)
        @name = employee[:name]
        @age = employee[:age]
        @salary = employee[:salary]
    end

    def give_raise(amount_of_raise)
        @salary.to_i = salary
        salary + amount_of_raise
    end


end