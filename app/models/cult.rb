class Cult

    @@all = []

    attr_accessor :name, :location, :slogan
    attr_reader :founding_year

    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        oath = Bloodoath.new(self,follower) 
    end

    def my_bloodoaths
        Bloodoath.all.select do |oaths|
            oaths.cult == self
        end
    end

    def my_followers
        my_bloodoaths.map do |oaths|
            oaths.follower
        end
    end

    def cult_population
        my_bloodoaths.count
    end

    def self.find_by_name(name)
        self.all.find do |cults|
            cults.name == name
        end
    end

    def self.find_by_location(location)
        self.all.find do |cults|
            cults.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.find do |cults|
            cults.founding_year == year
        end
    end

    def average_age
        my_followers.map do |follower_info|
            follower_info.age 
        end.sum / my_followers.count.to_f
    end
    
    def my_followers_motto
        my_followers.map do |follower_info|
            follower_info.life_motto
        end
    end

    def self.least_popular
        counter = 1 
        least_pop = " "
        self.all.map do |cults|
            if cults.my_followers.count < counter
                cults.my_followers.count = counter
                least_pop = cults.name 
            end
        end
        least_pop
    end
end