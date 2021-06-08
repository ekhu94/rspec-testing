RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'BEFORE CONTEXT'
  end

  before(:example) do 
    puts 'BEFORE EXAMPLE'
  end

  it 'does basic addition' do
    expect(5 + 9).to eq(14)
  end

  after(:example) do
    puts 'AFTER EXAMPLE'
  end

  context 'with condition A' do
    before(:context) do
      puts 'BEFORE COND A CONTEXT'
    end

    before(:example) do
      puts 'BEFORE COND A EXAMPLE'
    end

    it 'does basic subtraction' do
      expect(5 - 4).to eq(1)
    end

    after(:example) do
      puts 'AFTER COND A EXAMPLE'
    end

    after(:context) do
      puts 'AFTER COND A CONTEXT'
    end
  end
end