require 'randomusic'

describe Randomusic do

  it 'should return 5 page numbers from pre-1980' do
    random = Randomusic.new.tracks(1979)
    expect(random.count).to eq 5
    random.each do |x|
      expect(x >= 20 && x <= 455).to be true
    end
  end

end