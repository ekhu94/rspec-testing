RSpec.describe 'comparison matchers' do
  
  it 'performs comparisons using Ruby built-in operators' do
    expect(10).to be > 9
    expect(100).to be >= 100
    expect(50).to be < 72
    expect(18).to be <= 81
  end
  
  # when a value is passed to an example group, it represents the subject of all examples inside
  context 10 do
    it { is_expected.to be > 5 }
    it { is_expected.to be <= 21 }
    it { is_expected.to be < 40 }
    it { is_expected.to be >= 8 }
  end

end