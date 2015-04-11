require 'formatter'

describe 'formatter' do
  it 'recognises the days of one month' do
    date = "2015-04-11"
    date2 = "2015-04-01"
    expect(date.formatter).to eq ("April 11 2015")
    expect(date2.formatter).to eq ("April 1 2015")
  end

  it 'recognises the year' do
    date = "2016-04-11"
    expect(date.formatter).to eq ("April 11 2016")
  end

end