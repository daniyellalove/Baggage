require "pry"
require_relative "../config/environment"
require 'net/http'
require 'json'

class Api #Baggage::API

    def initialize
        #urls = {marvel: "https://comicvine.gamespot.com/marvel/4010-31/", dc: "https://comicvine.gamespot.com/dc-comics/4010-10/"}
        @url = "https://comicvine.gamespot.com/publishers/"
    end

    def get_publisher_urls
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        data["results"].each do |publisher|
            get_publisher_data(publisher["url"])
        end
    end

    def get_publisher_data(url)
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        Baggage.new(data)
    end
end

Api.new.get_publisher_urls #Baggage::
binding.pry