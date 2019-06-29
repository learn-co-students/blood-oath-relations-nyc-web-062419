class BloodOath

    attr_reader :initiation_date, :cult, :follower

    @@all = []

    def initialize(date, cult, follower)
        @initiation_date = date
        @cult = cult
        @follower = follower
        BloodOath.all << self
        follower.join_cult(cult)
        cult.recruit_follower(follower)
    end

    def self.all
        @@all
    end

    def self.first_oath
       self.all.sort_by {|oath| oath.initiation_date}.first.follower
    end

end