require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("cult1", "New York", "1985", "Eat my Shorts")
cult2 = Cult.new("cult2", "New York", "1987", "The World's Gonna End!")
cult3 = Cult.new("cult3", "Connecticut", "1983", "Blood!")

follower1 = Follower.new("Joe", 20, "My life sucks")
follower2 = Follower.new("Ashley", 67, "What is life?")
follower3 = Follower.new("Bob", 45, "Life is time and time is a construct")

pact1 = BloodOath.new("1987-04-20", cult2, follower3)
pact2 = BloodOath.new("1987-04-20", cult2, follower1)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
