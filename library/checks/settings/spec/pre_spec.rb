require 'spec_helper'

describe file '/etc/astute.yaml' do
  it { should be_file }
  it { should be_readable }
  its(:content) { should match /^role: \w+/ }
end
