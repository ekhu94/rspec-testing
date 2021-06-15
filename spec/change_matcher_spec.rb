RSpec.describe 'Change Matchers' do
  subject { [1, 2, 3, 4] }

  it 'checks for changes to subject' do
    expect { subject.push(5) }.to change { subject.length }.by(1)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end