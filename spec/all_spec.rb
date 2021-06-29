RSpec.describe 'all matchers' do
  # define an array of numbers as the test subject
  subject { [10, 20, 30, 40, 50] }

  it 'checks all elements with predicate matchers' do
    expect(subject).to all(be_even)
    expect(subject).not_to all(be_odd)
  end

  it 'checks all elements with comparison matchers' do
    expect(subject).to all be > 9
    expect(subject).to all be <= 100
  end

end