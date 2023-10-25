require './lib/employee'
require './lib/department'

RSpec.describe Department do
    it "" do
        
    end
    customer_service = Department.new("Customer Service")    
# => #<Department:0x00007fce46993d58...>

    customer_service.name
# => "Customer Service"

    customer_service.employees
# => []

    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
# => #<Employee:0x00007fce46194788...>

    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
# => #<Employee:0x00007fce46a610a0...>

    customer_service.hire(bobbi)

    customer_service.hire(aaron)    

    customer_service.employees
# => [#<Employee:0x00007fce46194788...>, #<Employee:0x00007fce46a610a0...>]

    customer_service.expenses
# => 0

    customer_service.expense(100)

    customer_service.expense(25)    

    customer_service.expenses
# => 125
end