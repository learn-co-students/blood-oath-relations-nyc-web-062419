class Follower

    attr_accessor :age, :life_motto
    attr_reader :name, :cults

    @@all = []

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end

    def join_cult (cult)
        @cults << cult
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age (num)
        self.all.select do |age_instance|
            age_instance.age >= num
        end
    end

end