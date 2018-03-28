require_relative '../spec_helper'

describe 'timezone_lwrp::default' do
  subject do
    ChefSpec::ServerRunner.new do |node|
      node.set['tz'] = 'Europe/Berlin'
    end.converge(described_recipe)
  end

  it { is_expected.to set_timezone 'Europe/Berlin' }
end
