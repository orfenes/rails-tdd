require 'calculator'

describe Calculator do

  subject(:calc){ described_class.new }
  
  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3, 0)}.to raise_error('divided by 0')
    end
  end

  context '#sum' do
    it 'with positive numbers' do      
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with positive and negative numbers' do      
      result = calc.sum(-5,7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do
      result = calc.sum(-5, -7)
      expect(result).to eq(-12)
    end

  end
end 