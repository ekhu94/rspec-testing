RSpec.describe 'eql matcher' do

  it 'checks for value equality' do
    expect(2).to eq(2)
    expect("Hello".length).to eq("World".length)
    expect("racecar".reverse).to eq("racecar")
  end

end