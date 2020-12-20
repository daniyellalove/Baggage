require 'open-uri'
require "pry"
require_relative "../config/environment"
require 'dotenv'
Dotenv.load('.env')


class Baggage::API
    
    def initialize
        binding.pry
        @url = "https://comicvine.gamespot.com/api/publishers/?api_key=#{ENV["COMICVINE_KEY"]}&format=json"
    end

    def get_publisher_urls
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        data["results"].each do |publisher| 
            get_publisher_data(publisher["url"])
        end
    end
            #Publisher.new(publisher)
            #api_detail_url":"https:\/\/comicvine.gamespot.com\/api\/publisher\/4010-31\/ marvel
            #puts response.body
        
    

    def get_publisher_data(url)
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        Baggage::Publisher.new(data)
    end
end

#Baggage::API.new.get_publisher_urls
#binding.pry
#get publisher: Marvel name DC name and characters under publisher