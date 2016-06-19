require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Ubuntu Universe" do

  describe file("/etc/apt/sources.list.d/archive_ubuntu_com_ubuntu.list") do
    it { should be_file }
    it { should be_readable }
    it { should be_owned_by 'root' }
    it { should exist }
    its(:content) { should match /\ universe$/ }
  end

end

