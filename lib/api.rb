require "pry"
require_relative "../config/environment"


class Baggage::API

    def initialize
        @url = "https://comicvine.gamespot.com/publishers/"
    end

    def get_publisher_urls
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        data["results"].each do |publisher| publisher.include?("Marvel", "DC Comics")
            get_publisher_data(publisher["url"])
            Publisher.new(publisher)
        end
    end

    def get_publisher_data(url)
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        Baggage::Publisher.new(data)
    end
end