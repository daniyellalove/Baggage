require_relative "../config/environment"
require 'net/http'
require 'json'

class API #Baggage::API

    def initialize
        @key = ENV['COMICVINE_KEY']
    end

    def get_character_urls
        uri = URI.parse(key)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
    end

    def get_character_data(@key)
        uri = URI.parse(key)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        #Comics::Baggage.new(data)
    end
end

API.new.get_character_urls #Baggage::