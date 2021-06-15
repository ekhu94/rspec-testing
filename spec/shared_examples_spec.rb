RSpec.shared_examples 'a Ruby object with 3 elements' do
  it 'has the correct number of values' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe String do
  subject { 'the' }
  include_examples('a Ruby object with 3 elements')
end

RSpec.describe Array do
  subject { [3, 2, 1] }
  include_examples('a Ruby object with 3 elements')
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples('a Ruby object with 3 elements')
end