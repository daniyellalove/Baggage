# taking care of displaying info - all puts/print statements
# takes care of user input - gets
#1st level choose marvel or dc, 2nd level choose comic from marvel and dc
class Baggage::CLI
    def run
        greeting
        choose_baggage
        menu
        change_character?
        goodbye
    end

    def greeting
        puts "Welcome to Baggage. Enter a name to continue: "
        sleep 1
        input = gets.strip
        puts ("Welcome #{input}")
        sleep 1
        puts ("Enter 1 for Marvel or 2 for DC") 
        puts "1. Marvel"
        sleep(1)
        puts "2. DC"
        sleep(1)
        input = gets.strip
        characters = Hash.new()
        characters["Iron Man"] = "I'm a genius but I have trouble commiting to 1 person"
        characters["Scarlett Witch"] = "I nearly wiped out all mutant life on earth"
        characters["Batman"] = "I don't have any powers and I hide my true identity"
        characters["Catwoman"] = "I'm obsessed with cats and I have low self-control"
        if input == "1"
            puts characters["Iron Man", "Scarlett Witch"]
        elsif input == "2"
            puts characters["Batman", "catwoman"]
        else
            puts "Go back to main menu"
            menu
        end
    end
    
        #publisher = Baggage::Publisher.find(input.to_i)
    def change_character?
        puts ""
        puts "Would you like to change your character? Enter Y or N" 
        sleep 1
        input = gets.strip.downcase
        if input == "y"
            menu 
            sleep 1
        elsif input == "n"
            puts "Let's Begin" 
            sleep 1
        else 
            raiseerror 
        end
        #|publish, i|
        #puts "#{i + 1}. #{publish.name}"
    end

    def menu
        loop do
        end
        until input == "exit"
            return greeting 
            sleep 1
        end
        puts "Choose your baggage: " 
        sleep 1
        input = gets.strip.downcase 
        choose_baggage 
    end

    def choose_baggage
        characters = Hash["Iron Man" => "I'm a genius but I have trouble commiting to 1 person",
        "Scarlett Witch" => "I nearly wiped out all mutant life on earth",
        "Batman" => "I don't have any powers and I hide my true identity", 
        "Catwoman" => "I'm obsessed with cats and I have low self-control"]
        if @input == "1"
            puts Hash["Iron Man", "Scarlett Witch"]
        elsif greeting.input == "2"
            puts Hash["Batman", "Catwoman"]
        else
            puts "Go back to main menu"
            menu
        end
    end


    #def list_publisher(publisher)
    #Baggage::Publishers.new.get_publisher_urls.include?("Marvel", "DC Comics")
       #dc_dates = ["Harley Quinn", "Poison Ivy", "Flash", "Joker"]
        #marvel_dates = ["Dark Phoenix", "Storm", "Thanos", "Thor"]

        #Baggage::Comics.each.with_index(1) do |publish, i|
           # puts "#{i + 1}. #{comic.name}"
       # end
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
    #end

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