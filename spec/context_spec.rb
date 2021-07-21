RSpec.describe '#even? method' do
# testing instance method with # in front, class method with . (.even?)
  
  # for the nested describes can use 'context' or 'describe', mostly used 'context'
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq (true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq (false)
    end
  end
end