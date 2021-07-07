class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto =life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def my_bloodoaths
        Bloodoath.all.select do |oaths|
            oaths.follower == self
        end
    end

    def cults
        my_bloodoaths.map do |cults|
            cults.cult
        end
    end
    
    def join_cult(cult)
        Bloodoath.new(cult,self)
    end

    def self.of_a_certain_age(age)
        @@all.select do |followers|
            followers.age >= age
        end
    end
end