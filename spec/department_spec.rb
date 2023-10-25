require "./lib/employee"
require "./lib/department"

describe Department do

    describe "#initialize" do
        it "exists" do
            customer_service = Department.new("Customer Service")

            expect(customer_service).to be_a Department
        end

        it "instantiates a department name from argument" do
            customer_service = Department.new("Customer Service")

            expect(customer_service.name).to eq("Customer Service")
        end

        it "instantiates an empty @employees variable" do
            customer_service = Department.new("Customer Service")

            expect(customer_service.employees).to eq([])
        end
    end

    describe "#hire" do
        it "adds an employee to @employees array" do
            customer_service = Department.new("Customer Service")
            bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
            aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
            customer_service.hire(bobbi)
            customer_service.hire(aaron)

            expect(customer_service.employees).to include(bobbi, aaron)
        end
    end
end