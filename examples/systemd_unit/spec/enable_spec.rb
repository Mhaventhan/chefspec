require 'chefspec'

describe 'systemd_unit::enable' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '18.04').converge(described_recipe) }

  it 'enables a systemd unit with an explicit action' do
    expect(chef_run).to enable_systemd_unit('explicit_action')
    expect(chef_run).to_not enable_systemd_unit('not_explicit_action')
  end
end
