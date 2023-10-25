class Employee
    attr_reader :name, :age, :salary, :amount_of_raise

    def initialize(employee)
        @name = employee[:name]
        @age = employee[:age]
        @salary = employee[:salary]
    end

    def give raise(amount_of_raise)


    end


end