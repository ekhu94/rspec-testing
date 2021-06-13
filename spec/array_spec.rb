RSpec.describe Array do
  it 'should be empty at initialization' do
    expect(subject.length).to eq(0)
    subject.push('barnacles')
    expect(subject.length).to eq(1)
  end
end