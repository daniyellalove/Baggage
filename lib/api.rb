require_relative "../config/environment"

class Baggage::API

    def initialize
        @key = ENV['COMICVINE_KEY']
    end

    def get_character_urls
        uri = URI.parse(@key)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        #data["results"].each do |comic|
           # get_character_data(comic["url"])
        end
    end

    def get_character_data(url)
        uri = URI.parse(key)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        Comics::Baggage.new(data)
    end
end

Baggage::API.new.get_character_urls