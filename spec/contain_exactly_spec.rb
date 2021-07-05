RSpec.describe 'contain_exactly matchers' do

  subject { ['Edelgard', 'Dimitri', 'Claude'] }

  it 'checks all values contained in an array regardless of order' do
    expect(subject).to contain_exactly('Claude', 'Dimitri', 'Edelgard')
  end

end