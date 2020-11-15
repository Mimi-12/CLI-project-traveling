#require_relative "./traveling_cli/version"

require_relative './traveling_cli/api.rb'
require_relative './traveling_cli/cli.rb'
require_relative './traveling_cli/travel.rb'

require "rest-client"
require "json"
require 'httparty'
require 'pry'

require 'uri'
require 'net/http'
require 'openssl'