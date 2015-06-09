require 'spec_helper'
files = [
    '/bin/mount',
    '/bin/umount',
    '/bin/fusermount',
    '/usr/bin/arping',
    '/usr/bin/mtr',
    '/usr/bin/traceroute6',
    '/usr/bin/traceroute6.iputils'
]

describe package('libpam-passwdqc')do
  it {should be_installed}

end
describe package('libpam-tmpdir')do
  it {should be_installed}

end

describe file('/usr/bin/rlogin')do
  it {should_not be_directory }

end
describe file('/usr/bin/rsh')do
  it {should_not be_directory }

end
describe file('/usr/bin/rcp')do
  it {should_not be_directory }

end
#To Do:Test to check content
describe file('/etc/securetty')do
  it {should exist}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end
describe file('/etc/security/access.conf')do
  it {should exist}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file('/etc/security/limits.conf')do
  it {should exist}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end


describe file('/etc/security/limits.d')do
  it {should exist}
  it {should be_mode 755}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end


describe file('/etc/sysctl.conf')do
  it {should exist}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file('/etc/pam.d/common-session')do
  it {should exist}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end


files.each do |file|
  describe file(file) do
    it {should be_mode 755}
  end
end
