require 'spec_helper'

describe file('/var/lib/locales/supported.d/local') do
  it {should exist}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end

describe package('locales') do
it {should be_installed}
end