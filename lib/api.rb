require_relative "../config/environment"

class Baggage::API

    def initialize
        @url = "https://evilinsult.com/api/#insults"
    end

    def get_insults_urls
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        data["results"].each do |insult|
            get_insults_data(insult["url"])
        end
    end

    def get_insults_data(url)
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        BaggageLevels::Baggage.new(data)
    end
end

Baggage::API.new.get_insults_urls