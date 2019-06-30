require "pry"
class Cult

    attr_reader :name, :founding_year, :followers, :minimum_age
    attr_accessor :slogan, :location

    @@all = []

    def initialize (name, location, founding_year, slogan, minimum_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        Cult.all << self
    end

    def recruit_follower (follower)
        if follower.age < minimum_age
            puts "Sorry, you must be #{minimum_age} or older to join #{self.name}."
        else
            date = Time.now.to_s[0..9]
            BloodOath.new(date, self, follower)
        end
    end

    def followers
        oaths = BloodOath.all.select {|oath| oath.cult == self}
        oaths.collect {|oath| oath.follower}
    end

    def cult_population
        self.followers.count
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
        self.followers.each do |follower|
            ages << follower.age
        end
        ages.inject {|sum, age| sum + age}.to_f / ages.size
    end

    def my_followers_mottos
        self.followers.each {|follower| puts follower.life_motto}
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
        most_cults = all_location_numbers.max_by {|key, value| value}[0]
    end

end