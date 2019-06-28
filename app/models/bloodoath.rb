class Bloodoath
    attr_reader  :date, :cult, :follower
    @@all = []
#date
#cult
#follower


    def initialize(date, cult, follower)
        @date = date
        @cult = cult
        @follower = follower
        follower.cults << cult
        cult.followers << follower
        @@all << self
    end

    def self.all
        @@all
    end

    def initiation_date
        @date
    end
    
end
   