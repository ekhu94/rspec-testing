RSpec.describe 'all matchers' do
  subject { [10, 6, 82, 4, 0, 2] }

  it 'checks every element for eveness' do
    expect(subject).to all(be_even)
  end

  it { is_expected.to all(be_even) }

  it 'has elements all less than 100' do
    expect(subject).to all(be < 100)
  end
end