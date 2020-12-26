require_relative "../config/environment"
require 'uri'
require 'dotenv'
Dotenv.load
#require 'awesome_print'



class Baggage::API
    
    def initialize
        @url = ENV['URL']
        @encoded_url = ""
    end

    def get_publisher_urls
        @encoded_url = URI.encode(@url)
        uri = URI.parse(@encoded_url)
        response = Net::HTTP.get_response(uri)
        data = JSON.parse(response.body)
        data["results"].each do |publisher| 
            get_publisher_data(publisher["url"])
        end
    end
            #Publisher.new(publisher)
            #api_detail_url":"https:\/\/comicvine.gamespot.com\/api\/publisher\/4010-31\/ marvel
            #puts response.body
        
    

    def get_publisher_data(url)
        uri = URI.parse(@encoded_url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        binding.pry
        #Baggage::Publisher.new(data)
    end
end

Baggage::API.new.get_publisher_urls
#binding.pry
#get publisher: Marvel name DC name and characters under publisher