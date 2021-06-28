require_relative '../lib/movie'

RSpec.describe Movie do
  let(:stuntman) { double('Billy Bee', start_act: "Your father's dead...", fall_off_cliff: 'Nooooo!!!', end_act: 'Where is my comfy chair?!', ready?: true) }
  subject { described_class.new(stuntman) }

  context '#start_shooting method' do
    it 'expects the actor to perform 3 methods' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:start_act)
      expect(stuntman).to receive(:fall_off_cliff)
      expect(stuntman).to receive(:end_act)
      subject.start_shoot
    end
  end
end