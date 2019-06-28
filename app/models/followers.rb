
class Follower
    attr_accessor :name, :life_motto
    attr_reader :age
        @@all = []
        
            def initialize(name, age, life_motto)
                @name = name
                @age = age
                @life_motto = life_motto
                @@all << self
            end
        
            def self.all
                @@all
            end
    
        def cults
    
            Cult.all.select do |cult_instance|
                cult_instance.followers.include?(self)
            end
    
        end
    
        def join_cult(date, cult)
    
            Bloodoath.new(date, cult, self)
    
        end
    
        def self.of_a_certain_age(num)
    
            Follower.all.select do |follower_instance|
    
                follower_instance.age >= num
    
            end
    
        end
    
        def fellow_cult_members
            self.cults.collect do |cult|
                cult.followers
            end.flatten.uniq
        end
    
    
    
    
    end