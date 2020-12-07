# taking care of displaying info - all puts/print statements
# takes care of user input - gets
#class Baggage::CLI

    def run
        greeting
        menu
        goodbye
    end

    def greeting
        puts "Welcome to Baggage. Choose DC or Marvel"
        Baggage::API.new.get_character_urls
    end

    def menu
        loop do
        end
        list_dates
    end

    def list_dates
        Baggage::Comics.each.with_index(1) do |comic, i|
            puts "#{i + 1}. #{comic.name}"
        list_baggage
    end

    def list_baggage
        
    end

    def goodbye
        puts "See you soon"
        exit
    end
end