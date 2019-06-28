class Cult

    attr_reader :name, :founding_year, :cult_followers
    attr_accessor :slogan, :location

    @@all = []

    def initialize (name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_followers = []
        Cult.all << self
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

    def average_age
        ages = []
        self.cult_followers.each do |follower|
            ages << follower.age
        end
        ages.inject {|sum, age| sum + age}.to_f / ages.size
    end

    def my_followers_mottos
        self.cult_followers.each {|follower| puts follower.life_motto}
        nil
    end

    def self.least_popular
        self.all.sort_by {|cult| cult.cult_population}.first
    end

    def self.all_locations
        self.all.collect {|cult| cult.location}
    end

    def self.most_common_location
        all_location_numbers = {}
        all_locations.each {|location| if all_location_numbers[location] then all_location_numbers[location] += 1 else all_location_numbers[location] = 1 end}
        most_cults = all_location_numbers.max_by {|key, value| value}.key

        # locations = self.all.collect {|cult| cult.location}
        # location_numbers = locations.collect {|location| self.find_by_location(location).length}
    
    end

end