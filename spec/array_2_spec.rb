RSpec.describe Array do
  subject(:sally) do
    ['hair', 'red']
  end

  it 'starts with two values' do
    expect(subject.length).to eq(2)
    subject.pop()
    expect(subject.length).to eq(1)
  end

  it 'is equivalent to :sally' do
    expect(subject).to eq(sally)
  end
end