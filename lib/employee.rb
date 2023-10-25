class Employee
    attr_accessor :name, :age, :salary, :amount_of_raise

    def initialize(employee)
        @name = employee[:name]
        @age = employee[:age]
        @salary = employee[:salary]
    end

    def give_raise(amount_of_raise)
        @salary = salary
        salary = salary.to_i
        salary + @amount_of_raise
    end


end