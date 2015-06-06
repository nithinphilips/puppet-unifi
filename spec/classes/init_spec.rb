require 'spec_helper'
describe 'unifi' do

  context 'with defaults for all parameters' do
    it { should contain_class('unifi') }
  end
end
