RSpec.describe Hash do
  
  # let(:bob) { {a: 1, b: 2} }
  # same as line 3, advantage: gives room for shortcuts
  subject(:bob) do
    { a: 1, b: 2}
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

end