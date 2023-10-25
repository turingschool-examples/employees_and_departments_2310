require 'spec_helper'

RSpec.describe Department do

  it 'exists' do
    customer_service = Department.new("Customer Service")

    expect(customer_service).to be_instance_of(Department)
    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end

end