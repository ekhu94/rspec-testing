require_relative '../lib/professional_wrestler'

RSpec.describe 'have_attributes method' do
  context ProfessionalWrestler do
    subject { ProfessionalWrestler.new('Chono', 'Hosei Slap') }

    it 'contains a name attribute' do
      expect(subject).to have_attributes(name: 'Chono')
    end

    it { is_expected.to have_attributes(finishing_move: 'Hosei Slap') }
  end
end