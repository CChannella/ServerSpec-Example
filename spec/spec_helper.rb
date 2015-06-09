require 'rubygems'
require 'bundler/setup'

require 'serverspec'
require 'pathname'
require 'net/ssh'
require 'yaml'

include Serverspec::Helper::Ssh
include Serverspec::Helper::DetectOS
include Serverspec::Helper::Properties


RSpec.configure do |c|
  c.host  = ENV['HOST']
  options = Net::SSH::Config.for(c.host)
  user    = ENV['USER']
  c.ssh   = Net::SSH.start(c.host, user, options)
end