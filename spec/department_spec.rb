require './lib/employee'
require './lib/department'
require 'pry'


RSpec.describe Employee do
  it 'can initialize' do
    customer_service = Department.new("Customer Service")    

    expect(customer_service).to be_an_instance_of(Department)
  end
end