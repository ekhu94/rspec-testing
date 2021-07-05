RSpec.describe 'include matcher' do

  context 'with a String' do
    subject { 'Writing tests with RSpec is a great way to get really good at making software.' }

    it 'checks for inclusion of a substring' do
      expect(subject).to include('tests')
      expect(subject).to include('RSpec')
      expect(subject).to include('software')
    end
  end

  context 'with an Array' do
    subject { ['Ruby On Rails', 'Hanami', 'Sinatra', 'Grape'] }

    it 'checks for inclusion of array elements' do
      expect(subject).to include('Ruby On Rails')
      expect(subject).to include('Sinatra')
      expect(subject).to include('Hanami', 'Grape')
    end
  end

  context 'with a Hash' do
    subject { { :ruby => 'Yukihiro Matsumoto', :python => 'Guido van Rossum', :java => 'James Gosling' } }

    it 'checks for inclusion of keys and/or values' do
      expect(subject).to include(:java)
      expect(subject).to include(:python => 'Guido van Rossum')
      expect(subject).to include(ruby: 'Yukihiro Matsumoto')
    end
  end

end