RSpec.describe Hash do
  it 'is instantiated with no key-value pairs' do
    expect(subject.length).to eq(0)
  end
end