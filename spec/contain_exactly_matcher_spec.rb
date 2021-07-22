RSpec.describe 'contain exactly matcher' do
  subject {[1, 2, 3]}

  describe 'long from syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
    end
  end

  it { is_expected.to contain_exactly(1, 2, 3) }
end