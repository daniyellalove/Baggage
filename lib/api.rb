require "pry"
require_relative "../config/environment"


class Baggage::API

    def initialize
        @url = "https://comicvine.gamespot.com/api/publishers/?api_key=COMICVINE_KEY&format=json"
    end

    def get_publisher_urls
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        data["results"].each do |publisher| publisher.include?("Marvel", "DC Comics")
            get_publisher_data(publisher["url"])
            Publisher.new(publisher)
            #api_detail_url":"https:\/\/comicvine.gamespot.com\/api\/publisher\/4010-31\/ marvel

        end
    end

    def get_publisher_data(url)
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        Baggage::Publisher.new(data)
    end
end