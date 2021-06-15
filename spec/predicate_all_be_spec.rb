RSpec.describe 'Predicate All Be Challenge' do
  it 'can check for empty hashes' do
    expect({}).to be_empty
  end

  it 'checks for all even values' do
    expect([10, 20, 30]).to all(be_even)
  end

  it 'checks for comparisons' do
    expect([0, 1, 2]).to all(be >= 0)
  end
end