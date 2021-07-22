RSpec.describe 'comparison matchers' do
  it 'allows for comparions with ruby built-in operator' do
    expect(10).to be > 5
    expect(4).to be < 5
    expect(1).to be >= -1
  end

  describe 100 do
   # will automatcially declare:
   # subjecct { 100 }

   #one-liner:
   it {is_expected.to be > 90 }
   it {is_expected.to be >= 100 }
  end
end