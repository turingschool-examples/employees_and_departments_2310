require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  before(:each) do
    @budget_1 =Budget.new(2023)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@budget_1).to be_a(Budget)
    end
  end

  describe '#attributes' do
    it 'reads attributes' do
      expect(@budget_1.year).to eq(2023)
      expect(@budget_1.departments).to eq([])
    end
  end
end
