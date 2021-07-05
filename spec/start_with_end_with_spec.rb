RSpec.describe 'start_with and end_with matchers' do

  it 'checks the beginning of an array or string' do
    expect([10, 20, 30, 40, 50]).to start_with(10, 20)
    expect(['Ruby', 'Python', 'Java']).to start_with('Ruby')
  end

  it 'checks the end of an array or string' do
    expect([60, 70, 80, 90, 100]).to end_with(80, 90, 100)
    expect(['HTML', 'CSS', 'Javascript']).to end_with('Javascript')
  end
end