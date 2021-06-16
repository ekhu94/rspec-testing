RSpec.describe 'raise_error matcher' do

  def some_method
    return x
  end

  def party
    return 2 + "butts"
  end

  it 'can raise a NameError' do
    expect { some_method }.to raise_error(NameError)
  end

  it 'can raise a TypeError' do
    expect { party }.to raise_error(TypeError)
  end
end