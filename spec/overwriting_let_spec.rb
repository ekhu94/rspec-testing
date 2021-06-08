require_relative '../lib/programming_language'

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Javascript') }

  it 'has the name of the language' do
    expect(language.name).to eq('Javascript')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should have a default name of Ruby' do
      expect(language.name).to eq('Ruby')
    end
  end
end