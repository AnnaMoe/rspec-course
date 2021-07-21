RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(a).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for value including same type' do
      expect(a).not_to eql(b)

      expect(a).to eq(3.0)
      expect(a).to eq(3)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1,2,3] }
    let(:d) { [1,2,3] }
    let(:e) { c }

    it 'cares about object identity' do
      #will pass:
      #expect(c).to eq(d)
      #expect(c).to eql(d)
      expect(e).to eql(c)
      
      expect(e).to equal(c)
      expect(d).not_to equal(c)
      #alias:
      expect(e).to be(c)
      


    end
  end
end