require "./lib/employee"
require "./lib/department"

describe Department do
    it "exists" do
        customer_service = Department.new("Customer Service")

        expect(customer_service).to be_a Department
    end

    it "instantiates a department name from argument" do
        customer_service = Department.new("Customer Service")

        expect(customer_service.name).to eq("Customer Service")
    end
end