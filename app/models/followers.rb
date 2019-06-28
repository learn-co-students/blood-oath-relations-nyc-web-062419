class Followers
    attr_accessor  :name, :age, :life_motto, :cults
    @@all = []
#name
#age
#life_motto
#cults(that they belong to)

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end

    def self.all
        @@all
    end

    def join_cult (date, cult)
        Bloodoath.new(date, cult, self)
    end

    def self.of_a_certain_age(age)
        @@all.select {|flwr| flwr.age >= age}
    end










end
   


