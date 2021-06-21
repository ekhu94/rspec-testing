RSpec.describe 'eql matcher' do

  it 'checks for value equality' do
    expect(2).to eq(2)
    expect("Hello".length).to eq("World".length)
    expect("racecar".reverse).to eq("racecar")
  end

  it 'checks for value and type equality' do
    expect(5).not_to eql("5")
    expect(5).not_to eql(5.0)
    expect("hello").to eql("HELLO".downcase)
  end

end