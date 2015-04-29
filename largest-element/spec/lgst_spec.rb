require 'lgst'

describe 'a function that returns the largest element' do

  context 'in an empty list' do
    it 'returns nil' do
      expect([].lgst).to eq nil
    end
  end

  context 'in a list of one' do
    it 'returns the element itself' do
      expect([1].lgst).to eq 1
    end
  end
end