# taking care of displaying info - all puts/print statements
# takes care of user input - gets
class Baggage::CLI

    def run
        greeting
        menu
        goodbye
    end

    def run 
        puts "hi"

    def greeting
        puts "Welcome to Baggage. CHoose your Baggage."
        Baggage::API.new.get_insults_urls
    end

    def menu
        loop do
        end
        list_dates
    end

    def list_dates
        Baggage::BaggageLevels.each.with_index(1) do |bag, i|
            puts "#{i + 1}. #{bag.name}"
        list_baggage
    end

    def list_baggage

    end

    def goodbye
        puts "See you soon"
        exit
    end
end