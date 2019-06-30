class Cult
  attr_accessor :name, :founding_year, :location, :slogan, :followers, :minimum_age
  @@all = []
  # has a name
  # location
  # founding year
  # slogan

  def initialize(name, founding_year, location, slogan, minimum_age)
    @name = name
    @founding_year = founding_year
    @location = location
    @slogan = slogan
    @minimum_age = minimum_age
    @followers = []
    @@all << self
  end

  def self.find_by_name(name)
    @@all.select { |culte| culte.name == name }
  end

  def self.find_by_location(location)
    @@all.select { |culte| culte.location == location }
  end

  def self.find_by_founding_year(founding_year)
    @@all.select { |culte| culte.founding_year == founding_year }
  end

  def cult_population
    self.followers.count
  end

  def self.cult_location_count(location)
    @@all.select { |culte| culte.location == location }.count
  end

  def recruit_follower(date, follower)
    if follower.age >= self.minimum_age
        Bloodoath.new(date, self, follower)
    else
        puts "Im sorry, but you are too young for us. Come back in a few years"
    end
  end

  def average_age
    total_age = 0.0
    self.followers.each { |flwr| total_age += flwr.age }
    total_age / cult_population
  end

  def my_followers_mottos
    self.followers.map { |flwr| flwr.life_motto }
  end

  def self.least_popular
    @@all.min_by { |culte| culte.cult_population }
  end

  def self.most_common_location
    @@all.max_by { |culte| cult_location_count(culte.location) }.location
  end

  def self.all
    @@all
  end
end
