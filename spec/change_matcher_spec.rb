RSpec.describe 'change matcher' do
  subject { ['a', 'b', 'c'] }

  it 'checks for changes to an object' do
    expect { subject.push('d') }.to change { subject.length }.from(3).to(4)
  end
end