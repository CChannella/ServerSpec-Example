require 'spec_helper'


describe package('nexus_cli')do

  it { should be_installed.by('gem').with_version('4.1.0') }
end
describe package('ruby')do
  it {should be_installed}


end

describe command('ruby -v')do

  its(:stdout) { should contain('1.9.3')}
end

describe file('/root/.nexus_cli')do
  it {should exist}
  it {should be_mode 400}
end


describe file('/etc/hosts')do
  it {should exist}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file('/etc/facter/facts.d/hmrc-facter-pips.sh')do
  it {should exist}
  it {should be_mode 500}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file('/etc/facter/facts.d/hmrc-facter-gems.rb')do
  it {should exist}
  it {should be_mode 500}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file('/etc/facter/facts.d/hmrc-facter-pkg.sh')do
  it {should exist}
  it {should be_mode 500}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file('/usr/local/bin/hmrc-facter-pkg.sh')do
  it {should_not be_a_file }

end

describe file('/var/log/hmrc')do
  it {should be_directory}
  it {should be_mode 700}
end