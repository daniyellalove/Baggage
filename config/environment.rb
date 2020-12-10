require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require 'dotenv'
Dotenv.load('key.env')

#require_relative "../lib/modules/baggage"
require_relative "../lib/cli"
#require_relative "../lib/baggage-levels"
require_relative "../lib/api"
