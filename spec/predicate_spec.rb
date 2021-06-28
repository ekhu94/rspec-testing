RSpec.describe 'predicate matchers' do
  
  it 'checks whether a number is even or odd' do
    expect(5).to be_odd
    expect(20).to be_even
    expect(17 - 5).not_to be_odd
    expect(11 * 7).not_to be_even
  end
  
  it 'checks whether a number is equal to zero' do
    expect(0).to be_zero
    expect(0 + 2 * 0).to be_zero
    expect(92 % 3).not_to be_zero
  end

  context [] do
    it 'checks whether a collection is empty' do
      expect(subject).to be_empty
      subject << 'love and affection'
      expect(subject).not_to be_empty
    end
  end
  
end