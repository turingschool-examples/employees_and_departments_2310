require './lib/department'
require './lib/employee'

RSpec.describe Department do
   it "exists" do
    customer_service = Department.new("Customer Service") 

    expect(customer_service).to be_a(Department)
   end

   it "has reable attributes" do
    customer_service = Department.new("Customer Service") 

    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])

    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
    require 'pry'; binding.pry
   end
end