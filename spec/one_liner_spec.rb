RSpec.describe 'Shorthand Syntax' do
  subject { 10 }

  context 'with classic syntax' do
    it 'should equal 10' do
      expect(subject).to eq(10)
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq(10) }
  end
end