class Follower

    attr_accessor :age, :life_motto
    attr_reader :name, :cults

    @@all = []

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        Follower.all << self
    end

    def join_cult (cult)
        date = Time.now.to_s[0..9]
        BloodOath.new(date, cult, self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age (num)
        self.all.select do |age_instance|
            age_instance.age >= num
        end
    end

    def cults
        oaths = BloodOath.all.select {|oath| oath.follower == self}
        oaths.collect {|oath| oath.cult}
    end

    def my_cults_slogans
        self.cults.each {|cult| puts "#{cult.slogan} "}
    end

    def self.most_active
        self.all.sort_by {|follower| follower.cults.count}.last
    end

    def self.top_ten
        followers = self.all.sort_by {|follower| follower.cults.count}
        followers[followers.length-10..followers.length]
    end

    def fellow_cult_members
    end

end