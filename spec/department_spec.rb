require './lib/department'
require './lib/employee'

RSpec.describe Department do
  before(:each) do
    @customer_service = Department.new("Customer Service")  
  end

  describe '#initialize' do
    it 'exists' do
      expect(@customer_service).to be_a(Department)
    end
  end

  describe '#attributes' do
    it 'reads and returns attributes' do
      expect(@customer_service.name).to eq("Customer Service")
      expect(@customer_service.employees).to eq([])
      
    end
  end
end