# taking care of displaying info - all puts/print statements
# takes care of user input - gets
#1st level choose marvel or dc, 2nd level choose comic from marvel and dc
class CLI #Baggage:: ::API
    
    def call 
        #CLI::API.new#.api method for getting api
        puts "Baggage: Heroes and Villians"
    end

    def run
        call
        greeting
        menu
        choose_baggage
        goodbye
    end

    def greeting #30.27
        puts "Welcome to Baggage. Choose Marvel or DC:"
        puts "1. Marvel"
             "2. DC"
        #insert website link?
        #marvel link
        #dc link
        #Baggage::API.new.get_character_urls
    end

    def menu
        loop do
        end
        input = nil
        while input != "exit"
            puts "Enter 1 for Marvel and 2 for DC"
            input = gets.strip.downcase
            if input.to_i
            case input
            when "1" || "2"
                puts "Choose your baggage: "
            when "list"
                greeting
            end
        end
        choose_baggage
    end

    def choose_baggage
        #characters.map do |num|
        case input 
        when input == 1
        #1 = "Iron man"
            puts "I'm a genius but I have trouble commiting to 1 person"
        when input == 2
        #2 = "Scarlet Witch"
            puts "I nearly wiped out all mutant life on earth "
        when input == 3
        #3 = "Batman"
            puts "I don't have any powers and I hide my true identity"
        when input == 4
        #4 = "Catwoman"
            puts "I'm obsessed with cats and I have low self-control"
        else
            puts "Go back to main menu"
            greeting
        end
    end
        

    # def list_dates
       # dc_dates = ["Harley Quinn", "Poison Ivy", "Flash", "Joker"]
       # marvel_dates = ["Dark Phoenix", "Storm", "Thanos", "Thor"]
        #Baggage::Comics.each.with_index(1) do |comic, i|
        # puts "#{i + 1}. #{comic.name}"
   # end

   # def list_dc_baggage
       # baggage_1 = {
        #    "Harley Quinn" => "I cheated my way into college"
        #    "Poison Ivy" => "I stole an egyption artifact"
        #    "Superman" => "I can be a real jerk"
        #    "Joker" => "I manipulate others for my own good"
       # }
       # baggage_2 = {
        #    "Harley Quinn" => "I killed my ex-boyfriend"
         #   "Poison Ivy" => "I seduce people to get my way"
          #  "Superman" => "I've killed many people"
          #  "Joker" => "I blew up a school full of children"
       # }
       # baggage_3 = {
        #    "Harley Quinn" => "I'm clinically insane"
         #   "Poison Ivy" => "I will do anything to be the Mother of Nature"
         #   "Superman" => "I live a double life and I always lie to my loved ones"
          #  "Joker" => "My arch-nemesis is Batman"
      #  }
   # end

    #def list_marvel_baggage
      #  baggage_1 = {
        #    "Dark Phoenix" => "I'm hot headed"
         #   "Storm" => "I have severe claustrophobia"
         #   "Thor" => "I can be really obnoxius"
          #  "Thanos" => "I stole a child"
       # }
       # baggage_2 = {
          #  "Dark Phoenix" => "I'm a sociopath and I faked my own death"
           # "Storm" => "If anyone crosses me, I'll blow them away"
          #  "Thor" => "I killed my own brother"
           # "Thanos" => "When I'm bored, I kill people"
       # }
      #  baggage_3 = {
        #    "Dark Phoenix" => "I killed my own daughter"
           # "Storm" => "I'm only loyal to X-Men"
          #  "Thor" => "I teamed up with Hitler"
           # "Thanos" => "I have a devastating snap"
       # }
   # end

    def goodbye
        puts "See you soon"
        exit
    end
end


#figure out how to use api keys
#make code more abstract
#use api in cli
#use graphics