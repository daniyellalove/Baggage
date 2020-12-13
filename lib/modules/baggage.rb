#can't be instantiated, can't create objects
#i want most of these classes to include(binds the methods to the object instance) or extend(binds mothod to class itself)

module Baggage
    def current_user(name)
        choose_baggage.input.gets.strip
        puts "I am #{name}"
    end
end