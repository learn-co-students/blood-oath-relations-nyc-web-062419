class Bloodoath
    attr_reader :date, :cult, :follower, :valid

    @@all = []

        def initialize(date, cult, follower)
        begin
            raise "Age Error" unless follower.age > cult.min_age
            @date = date
            @cult = cult
            @follower = follower
            @@all << self
        rescue
            puts "Follower too young"
        end
    end
    
        def self.all
            @@all
        end
    end