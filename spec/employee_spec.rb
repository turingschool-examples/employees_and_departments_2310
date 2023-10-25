require './lib/employee'

RSpec.describe Employee do

  it 'can initialize' do
    @employee = Employee.new

    expect(@employee).to be_an_instance_of(Employee)
  end

end