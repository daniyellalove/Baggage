# taking care of displaying info - all puts/print statements
# takes care of user input - gets
class CLI #Baggage::
    
    def initialize
        
    end

    def call 
        puts ""
    end
    def run
        greeting
        menu
        choose_your_baggage
        goodbye
    end

    def greeting
        puts "Welcome to Baggage. Choose DC or Marvel"
        #marvel link
        #dc link
        #choose character
        
        #Baggage::API.new.get_character_urls
    end

    def menu
        loop do
        end
        puts "Enter 1 for Marvel and 2 for DC"
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input
            when 1 || 2
                puts "Choose your baggage: "
            end
        choose_baggage
        end
    end

    def choose_baggage
        when 1
            puts ""
        when 2
            puts ""
        when 3
            puts ""
        when 4 
            puts ""
        end
    end
        


    def list_dates
        dc_dates = ["Harley Quinn", "Poison Ivy", "Flash", "Joker"]
        marvel_dates = ["Dark Phoenix", "Storm", "Thanos", "Thor"]
        #Baggage::Comics.each.with_index(1) do |comic, i|
        # puts "#{i + 1}. #{comic.name}"
    end

    def list_dc_baggage
        baggage_1 = {
            "Harley Quinn" => "I cheated my way into college"
            "Poison Ivy" => "I stole an egyption artifact"
            "Superman" => "I can be a real jerk"
            "Joker" => "I manipulate others for my own good"
        }
        baggage_2 = {
            "Harley Quinn" => "I killed my ex-boyfriend"
            "Poison Ivy" => "I seduce people to get my way"
            "Superman" => "I've killed many people"
            "Joker" => "I blew up a school full of children"
        }
        baggage_3 = {
            "Harley Quinn" => "I'm clinically insane"
            "Poison Ivy" => "I will do anything to be the Mother of Nature"
            "Superman" => "I live a double life and I always lie to my loved ones"
            "Joker" => "My arch-nemesis is Batman"
        }
    end

    def list_marvel_baggage
        baggage_1 = {
            "Dark Phoenix" => "I'm hot headed"
            "Storm" => "I have severe claustrophobia"
            "Thor" => "I can be really obnoxius"
            "Thanos" => "I stole a child"
        }
        baggage_2 = {
            "Dark Phoenix" => "I'm a sociopath and I faked my own death"
            "Storm" => "If anyone crosses me, I'll blow them away"
            "Thor" => "I killed my own brother"
            "Thanos" => "When I'm bored, I kill people"
        }
        baggage_3 = {
            "Dark Phoenix" => "I killed my own daughter"
            "Storm" => "I'm only loyal to X-Men"
            "Thor" => "I teamed up with Hitler"
            "Thanos" => "I have a devastating snap"
        }
    end

    def goodbye
        puts "See you soon"
        exit
    end
end