require "serverspec"

set :backend, :exec

describe service("tuned") do
  it { should be_enabled }
  it { should be_running }
end

describe command("tuned-adm active") do
  its(:stdout) { should match /virtual-guest/ }
end
