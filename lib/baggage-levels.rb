class Baggage::BaggageLevels
    def initialize(insult_hash)
        insult_hash.each do |k, v|
            self.class.attr_accessor key
            self.send("#{k}=", v)
        end
        @@all << self
    end

    def self.all
        @@all
    end
end