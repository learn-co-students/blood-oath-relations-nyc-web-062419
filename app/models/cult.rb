class Cult
    attr_accessor  :name, :founding_year, :location, :slogan, :followers
    @@all = []
    # has a name
    # location
    # founding year
    # slogan
    
        def initialize(name, founding_year, location, slogan)
            @name = name
            @founding_year = founding_year
            @location = location
            @slogan = slogan
            @followers = []
            @@all << self
        end

        def self.all
            @@all
        end
        
        def self.find_by_name(name)
            @@all.select {|culte| culte.name == name}
        end

        def self.find_by_location(location)
            @@all.select {|culte| culte.location == location}
        end

        def self.find_by_founding_year(founding_year)
            @@all.select {|culte| culte.founding_year == founding_year}
        end

        def cult_population
            self.followers.count
        end

        def recruit_follower(date, follower)
            Bloodoath.new(date, self, follower)
        end








end



