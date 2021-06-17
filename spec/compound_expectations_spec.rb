RSpec.describe 'compound expectations' do
  context 'firetruck' do
    it { is_expected.to start_with('fire').and end_with('truck') }
  end

  context 20 do
    it 'is even and responds to the "times" method' do
      expect(subject).to be_even.and respond_to(:times)
    end
  end

  context [4, 8, 15, 16, 23, 42] do
    it { is_expected.to include(42).and start_with(4, 8, 15) }
  end
end