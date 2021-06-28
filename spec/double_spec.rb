RSpec.describe 'A Random Double' do
  let(:stuntman) { double('Billy Bee') }

  it 'invokes a defined method' do
    allow(stuntman).to receive(:kick_opponent).and_return('ka-pow!')
    expect(stuntman.kick_opponent).to eq('ka-pow!')
  end

  it 'invokes several defined methods' do
    allow(stuntman).to receive_messages(kick_opponent_on_ground: 'ka-poof!', jump_off_roof: 'woaahhhh', choke_hold_daron: true)

    expect(stuntman.kick_opponent_on_ground).to eq('ka-poof!')
    expect(stuntman.jump_off_roof).to eq('woaahhhh')
    expect(stuntman.choke_hold_daron).to be true
  end
end