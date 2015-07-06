# This file is used by Rack-based servers to start the application.
require 'faye'
require ::File.expand_path('../config/environment', __FILE__)


bayeux = Faye::RackAdapter.new(
			:mount => '/faye', 
			:timeout => 25,
			:engine => {
				:type => 'redis',
				:host => 'perch.redistogo.com',
				:port => '9186',
				:password => '6f1fc6638e95cc8f2c6dd77629950b48',
				:database => 1
			})
run bayeux
run Rails.application


