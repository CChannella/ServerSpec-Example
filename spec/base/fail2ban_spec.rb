require 'spec_helper'

describe package('fail2ban')do
  it { should be_installed }
end
describe service('fail2ban') do
  it { should be_running }
end

describe file('/etc/fail2ban/fail2ban.conf')do
  it {should exist}
  it {should be_mode 600}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file( '/etc/fail2ban/jail.conf')do
  it {should exist}
  it {should be_mode 600}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe file( '/etc/fail2ban/action.d/sendmail-whois-lines.conf')do
  it {should exist}
  it {should be_mode 600}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end