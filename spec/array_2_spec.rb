RSpec.describe Array do
  subject(:sally) { [3, 5] }
  
 
  it 'has a length of two' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end
 
  it 'is equal to the original array' do
    expect(sally).to eq([3, 5])
  end
end