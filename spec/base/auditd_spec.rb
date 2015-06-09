require 'spec_helper'

describe package('auditd') do
  it { should be_installed }
end
describe service('auditd') do
  it { should be_running }
end


