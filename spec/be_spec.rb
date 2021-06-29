RSpec.describe 'be matchers' do

  it 'checks for truthiness' do
    expect("Kamurouchou").to be_truthy
    expect(1988).to be_truthy
    expect({ first: "Akira", last: "Nishikiyama" }).to be_truthy
    expect([]).to be_truthy
    expect(5 < 4).not_to be_truthy
  end

  it 'checks for falsiness' do
    expect(!true).to be_falsey
    expect(nil).to be_falsey
    expect(10 - 8 < 1).to be_falsey
    expect("").not_to be_falsey
    expect(0).not_to be_falsey
  end

  it 'checks for nil values' do
    expect(nil).to be_nil
    expect("Awano".length).not_to be_nil
    expect(['one', 'two', 'three']).not_to be_nil
    expect(0).not_to be_nil
    expect(false).not_to be_nil
  end

end