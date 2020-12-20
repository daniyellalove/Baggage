require_relative "../config/environment"
# taking care of displaying info - all puts/print statements
# takes care of user input - gets
#1st level choose marvel or dc, 2nd level choose comic from marvel and dc
class Baggage::CLI
    attr_accessor :input, :name, :baggage, :publisher
    @@all = []
    
    def initialize
        @@all << self
    end 
    
    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
    end

    def run
        greeting
        your_baggage
        list_baggage_1
        list_baggage_2
        menu
        goodbye
    end

    def greeting
        puts "Welcome to Baggage. Enter a name to continue: "
        sleep 1
        @input = gets.strip
        puts ""
        puts "Welcome #{@input}. Let's begin Baggage ~"
        sleep 1
        puts ""
    end

    def your_baggage
        Baggage::Publisher.all.each_with_index do |publisher_hash, i| #listing/putsing each publisher with a number
            puts "#{i + 1}. #{publisher_hash.name}"
        end
        
        iron_man = Baggage::CLI.new
        iron_man.name = "Iron Man"
        iron_man.baggage = "1. I'm a genius but I have trouble commiting to 1 person"

        scarlett_witch = Baggage::CLI.new
        scarlett_witch.name = "Scarlett Witch"
        scarlett_witch.baggage = "2. I nearly wiped out all mutant life on earth"

        batman = Baggage::CLI.new
        batman.name = "Batman"
        batman.baggage = "1. I don't have any powers and I hide my true identity"

        catwoman = Baggage::CLI.new
        catwoman.name = "Catwoman"
        catwoman.baggage = "2. I'm obsessed with cats and I have low self-control"
       
        puts ""
        puts "Enter 1 for Marvel or 2 for DC"
        puts ""
        puts "1. Marvel"
        sleep 0.5
        puts "2. DC"
        @input = gets.strip
        if @input == "1"
            puts "Choose your unfortunate baggage: "
            sleep 1
            puts ""
            puts "#{iron_man.baggage}"
            sleep 1
            puts "#{scarlett_witch.baggage}"
            sleep 0.5
            puts ""
            input = gets.strip
            if @input == "1"
                puts "You are #{iron_man.name}"
                sleep 0.5
            elsif @input == "2"
                puts "You are #{scarlett_witch.name}"
                sleep 0.5
            else
                exit
            end
        elsif input == "2"
            puts "Choose your unfortunate baggage: "
            sleep 1
            puts ""
            puts "#{batman.baggage}"
            sleep 0.5
            puts "#{catwoman.baggage}"
            sleep 0.5
            @input = gets.strip
            if @input == "1"
            puts "You are #{batman.name}"
            elsif @input == "2"
                puts "You are #{catwoman.name}"
            end
        else
            exit
        end
        puts "Starting Baggage.."
        sleep 0.5
    end

    def menu
        loop do
        end
        puts "Enter exit to exit: "
        @input = gets.strip
        puts ""
        puts "Exiting.."
        exit
    end



   def list_baggage_1
        hq_baggage1 = Baggage::CLI.new
        hq_baggage1.name = "Harley Quinn"
        hq_baggage1.baggage = "I cheated my way into college"

        jk_baggage1 = Baggage::CLI.new
        jk_baggage1.name = "Joker"
        jk_baggage1.baggage = "I manipulate others for my own good" 

        dp_baggage1 = Baggage::CLI.new
        dp_baggage1.name = "Dark Phoenix"
        dp_baggage1.baggage = "3. Dark Phoenix says: I'm hot headed"

        tn_baggage1 = Baggage::CLI.new
        tn_baggage1.name = "Thanos"
        tn_baggage1.baggage = "stole a child"

        puts ""
        puts "Starting baggage 1... Enter a number to get rid of some baggage"
        sleep 1
        puts ""
        puts "1. #{hq_baggage1.name} says: #{hq_baggage1.baggage}"
        sleep 1
        puts "2. #{jk_baggage1.name} says: #{jk_baggage1.baggage}"
        sleep 1
        puts "3. #{dp_baggage1.name} says: #{dp_baggage1.baggage}"
        sleep 1
        puts "4. #{tn_baggage1.name} says: #{tn_baggage1.baggage}"  
        sleep 1
        puts ""
        puts "Or type exit"
        sleep 1
        input = gets.strip
        if input == "1"
            puts "#{hq_baggage1.name} packs up her baggage.."
            sleep 1
            puts ""
            puts "#{hq_baggage1.name}: I never liked you anyway"
            sleep 1   
        elsif input == "2"
            puts "#{jk_baggage1.name} packs up his baggage.."
            sleep 1
            puts ""
            puts "#{jk_baggage1.name}: HAahahAha"
            sleep 1
        elsif input == "3"
            puts "You have too much baggage #{dp_baggage1.name}"
            sleep 1
            puts ""
            puts "#{dp_baggage1.name}: I never wanted you"
            sleep 1
        elsif input == "4"
            puts "You have too much baggage #{tn_baggage1.name}"
            sleep 1
            puts ""
            puts "#{tn_baggage1.name}: Goodbye loser"
            sleep 1
        else
            puts "Exiting now.." 
            sleep 1
            exit
        end
    end
      

    def list_baggage_2#(number)
        a = ["1. I killed my ex-boyfriend", "2. I blew up a school full of children", "3. When I'm bored, I kill people", "4. I'm a sociopath and I faked my own death"]
        #heroes = a.each do |hero|
            #puts hero 
        #end
        puts ""
        puts "..Starting Baggage 2"
        puts ""
        joined = a.join(" ")
        puts joined
        puts ""
        puts "Enter a number at random to get rid of some baggage"
        sleep 1
        input = gets.strip
        if input == "1"
            puts "Goodbye Harley Quinn"
            sleep 1
            exit
        elsif input == "2"
            puts "Goodbye Joker"
            sleep 1
            exit
        elsif input == "3"
            puts "Goodbye Thanos"
            sleep 1
            exit
        elsif input == "4"
            puts "Goodbye Dark Phoenix"
            sleep 1
            exit
        else
            puts "Exiting Progrom"
            sleep 3
            exit
        #result= a.delete(number)
        #puts result
        end
        puts "Type exit to exit program"
        if input == "exit"
            exit
        end
        #a.delete(number)
    end
        
    def goodbye
        puts "See you soon"
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


    #def list_publisher(publisher)
    #Baggage::Publishers.new.get_publisher_urls.include?("Marvel", "DC Comics")
       #dc_dates = ["Harley Quinn", "Poison Ivy", "Flash", "Joker"]
        #marvel_dates = ["Dark Phoenix", "Storm", "Thanos", "Thor"]

        #Baggage::Comics.each.with_index(1) do |publish, i|
           # puts "#{i + 1}. #{comic.name}"
       # end
  # end




#figure out how to use api keys
#make code more abstract
#use api in cli
#use graphics

 #puts "Storm" => "I have severe claustrophobia"
    #puts "Thor" => "I can be really obnoxius"

    #puts "Poison Ivy" => "2. I stole an egyption artifact"
    #puts "Superman" => "3. I can be a real jerk"