RSpec.describe 'contain_exactly matchers' do

  subject { ['Edelgard', 'Dimitri'] }

  it 'checks all values contained in an array regardless of order' do
    expect(subject).to contain_exactly('Dimitri', 'Edelgard')
    subject.push('Claude')
    expect(subject).to contain_exactly('Claude', 'Dimitri', 'Edelgard')
  end

end