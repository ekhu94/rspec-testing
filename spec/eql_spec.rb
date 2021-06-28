RSpec.describe 'eq, eql & equal matcher' do
  let(:first_hash) { { a: 1, b: 2, c: 3 } }
  let(:second_hash) { { a: 1, b: 2, c: 3 } }
  let(:third_hash) { first_hash }

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
  
  it 'checks for key/value equality' do
    expect(first_hash).to eql(second_hash)
    expect(second_hash).to eq(third_hash)
  end
  
  it 'checks for object identity' do
    expect(first_hash).to equal(third_hash)
    expect(first_hash).not_to equal(second_hash)
  end

end