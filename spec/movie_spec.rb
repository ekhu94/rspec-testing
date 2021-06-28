require_relative '../lib/movie'

RSpec.describe Movie do
  let(:stuntman) { double('Billy Bee', start_act: "Your father's dead...", fall_off_cliff: 'Nooooo!!!', end_act: 'Where is my comfy chair?!', ready?: true) }
  subject { described_class.new(stuntman) }

  context '#start_shooting method' do
    it 'expects the actor to perform 3 methods' do
      expect(stuntman).to receive(:ready?).once
      # expect(stuntman).to receive(:start_act).twice
      expect(stuntman).to receive(:start_act).exactly(2).times
      expect(stuntman).to receive(:fall_off_cliff).at_most(1).times
      expect(stuntman).to receive(:end_act).exactly(1).times
      subject.start_shoot
    end
  end
end