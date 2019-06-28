class Cult

    attr_reader :name, :founding_year
    attr_accessor :slogan, :location

    @@all = []

    def initialize (name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_followers = []
        @@all << self
    end

    def recruit_follower (follower)
        @cult_followers << follower
    end

    def cult_population
        @cult_followers.length
    end

    def self.all
        @@all
    end

    def self.find_by_name (name)
        self.all.find do |name_instance|
            name_instance.name == name
        end
    end

    def self.find_by_location (location)
        self.all.select do |location_instance|
            location_instance.location == location
        end
    end

    def self.find_by_founding_year (num)
        self.all.select do |year_instance|
            year_instance.founding_year == num
        end
    end

end