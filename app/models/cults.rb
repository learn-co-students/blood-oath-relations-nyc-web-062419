
class Cult
    attr_accessor :name, :location, :slogan, :min_age
    attr_reader :founding_year
    @@all = []

    def initialize(name, location, founding_year, slogan, min_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @min_age = min_age
        @@all << self
    end

    def oaths
        Bloodoath.all.select do |oath_instance|
            oath_instance.cult == self
        end
    end

    def followers
        self.oaths.collect do |oath_instance|
            oath_instance.follower
        end.uniq
    end

    def recruit_follower (date, follower)
        Bloodoath.new(date, self, follower)
    end

    def cult_population
        followers.length
    end

    def self.find_by_name(str)
        arr = Cult.all.select do |cult|
            cult.name == str
        end
        if arr.length == 0
            return nil
        elsif arr.length == 1
            return arr[0]
        else
            return arr 
        end
    end

    def self.find_by_location(str)
        arr = Cult.all.select do |cult|
            cult.location == str
        end
    end

    def self.find_by_founding_year(num)
        arr = Cult.all.select do |cult|
            cult.founding_year == num
        end
    end


    def self.all
        @@all
    end
end
