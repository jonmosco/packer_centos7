# Test NFS is working properly
#
require 'spec_helper'

describe service('nfs-server') do
  it { should be_enabled }
  it { should be_running }
end

describe service('nfs-lock') do
  it { should be_enabled }
  it { should be_running }
end

describe service('nfs-idmap') do
  it { should be_enabled }
  it { should be_running }
end

describe service('rpcbind') do
  it { should be_enabled }
  it { should be_running }
end

# Failure test...make sure we are working
#describe service('test_service') do
#  it { should be_enabled }
#  it { should be_running }
#end

describe port(2049) do
  it { should be_listening }
end
