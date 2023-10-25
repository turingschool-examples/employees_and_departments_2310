require "./lib/employee"
require "./lib/department"

describe Department do
    it "exists" do
        customer_service = Department.new("Customer Service")

        expect(customer_service).to be_a Department
    end
end