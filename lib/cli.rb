# taking care of displaying info - all puts/print statements
# takes care of user input - gets
#1st level choose marvel or dc, 2nd level choose comic from marvel and dc
class Baggage::CLI
    def run
        greeting
        list_baggage_1
        menu
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
        sleep 0.5
        puts "2. DC"
        input = gets.strip
        characters = Hash.new
            characters["Iron Man"] = "1. I'm a genius but I have trouble commiting to 1 person"
            characters["Scarlett Witch"] = "2. I nearly wiped out all mutant life on earth"
            characters["Batman"] = "1. I don't have any powers and I hide my true identity"
            characters["Catwoman"] = "2. I'm obsessed with cats and I have low self-control"
        if input == "1"
            puts "Choose your baggage: "
            puts ""
            puts characters["Iron Man"] 
            sleep(0.5)
            puts characters["Scarlett Witch"]
            sleep(0.5)
            input = gets.strip
            puts "#{input}" 
        elsif input == "2"
            puts characters["Batman"]
            sleep(0.5)
            puts characters["Catwoman"]
            sleep(0.5)
            input = gets.strip
            puts "#{input}"
        end
    end

    def menu
        loop do
        end
        puts "enter exit to exit"
        input = gets.strip
        puts "Exiting.."
        exit
    end


    #def list_publisher(publisher)
    #Baggage::Publishers.new.get_publisher_urls.include?("Marvel", "DC Comics")
       #dc_dates = ["Harley Quinn", "Poison Ivy", "Flash", "Joker"]
        #marvel_dates = ["Dark Phoenix", "Storm", "Thanos", "Thor"]

        #Baggage::Comics.each.with_index(1) do |publish, i|
           # puts "#{i + 1}. #{comic.name}"
       # end
  # end

   def list_baggage_1
        puts ""
        puts "Starting baggage 1... Enter a number to get rid of some baggage"
        puts ""
        puts "Harley Quinn says: 1. I cheated my way into college"
        puts "Joker says 2. I manipulate others for my own good" 
        puts "Dark Phoenix says: 3. I'm hot headed"
        puts "Thanos says: 4. I stole a child"  
        puts "Exit"
        input = gets.strip
        if input == "1"
            puts "You have too much baggage Harley Quinn"
            puts "Harley Quinn says: I never liked you anyway"
            sleep 1   
        elsif input == "2"
            puts "You have too much baggage Joker"
            puts "HAahahAha"
            sleep 1
        elsif input == "3"
            puts "You have too much baggage Dark Phoenix"
            puts "Dark Phoenix says: I never wanted you"
            sleep 1
        elsif input == "4"
            puts "You have too much baggage Thanos"
            puts "Goodbye loser"
            sleep 1
        else
            puts "Exiting now.." 
            sleep 1
            exit
        end
    end
      


        
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
        # 
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

 #puts "Storm" => "I have severe claustrophobia"
    #puts "Thor" => "I can be really obnoxius"

    #puts "Poison Ivy" => "2. I stole an egyption artifact"
    #puts "Superman" => "3. I can be a real jerk"