class Follower

    attr_accessor :age, :life_motto
    attr_reader :name, :cults

    @@all = []

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        Follower.all << self
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

    def my_cults_slogans
        self.cults.each {|cult| puts "#{cult.slogan} "}
        nil
    end

    def self.most_active
        self.all.sort_by {|follower| follower.cults.count}.last
    end

    def self.top_ten
        followers = self.all.sort_by {|follower| follower.cults.count}
        followers[followers.length-10..followers.length]
    end

end