require "pry"
require 'net/http'
require 'open-uri'
require 'json'
require 'dotenv'
Dotenv.load('key.env')

require_relative "../lib/modules/baggage"
require_relative "../lib/cli"
require_relative "../lib/comics"
require_relative "../lib/publisher"
require_relative "../lib/api"
