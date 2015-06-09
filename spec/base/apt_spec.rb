require 'spec_helper'

shared_examples 'all::aptspec' do

describe package('apt') do
  it { should be_installed }
end

end