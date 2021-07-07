class Bloodoath
    
    attr_accessor :init_date, :cult, :follower

    @@all = []

    def initialize(init_date=Time.now,cult,follower)
        @init_date = init_date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end

end