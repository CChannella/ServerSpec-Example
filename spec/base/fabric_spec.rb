require 'spec_helper'

describe package('fabric') do
  it { should be_installed }
end