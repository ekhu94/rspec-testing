RSpec.describe 'change matcher' do
  
  subject { ['a', 'b', 'c'] }

  it 'checks for positive changes to an object' do
    expect { subject.push('d') }.to change { subject.length }.by(1)
  end

  it 'checks for negative changes to an object' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end

end