require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("cult1", "New York", 1985, "Eat my Shorts")
cult2 = Cult.new("cult2", "New York", 1987, "The World's Gonna End!")
cult3 = Cult.new("cult3", "Connecticut", 1983, "Blood!")

follower1 = Follower.new("Joe", 20, "My life sucks")
follower2 = Follower.new("Ashley", 67, "What is life?")
follower3 = Follower.new("Bob", 45, "Life is time and time is a construct") #Follower:0x00007fb1740b1f08
follower4 = Follower.new("Joel", 20, "My life sucks")
follower5 = Follower.new("Ash", 67, "What is life?")
follower6 = Follower.new("Eli", 45, "Life is time and time is a construct")
follower7 = Follower.new("Evan", 20, "My life sucks")
follower8 = Follower.new("Ley", 67, "What is life?")
follower9 = Follower.new("Bill", 45, "Life is time and time is a construct")
follower10 = Follower.new("Chris", 20, "My life sucks")
follower11 = Follower.new("Mike", 67, "What is life?")
follower12 = Follower.new("Shane", 45, "Life is time and time is a construct")

pact1 = BloodOath.new("1987-04-20", cult1, follower3) #<Follower:0x00007f8b5e0a9e98
pact2 = BloodOath.new("1988-04-20", cult2, follower1)
pact3 = BloodOath.new("1989-04-20", cult3, follower2)
pact4 = BloodOath.new("1990-04-20", cult1, follower4)
pact5 = BloodOath.new("1987-05-20", cult2, follower5)
pact6 = BloodOath.new("1987-06-20", cult3, follower6)
pact7 = BloodOath.new("1987-07-20", cult1, follower7)
pact8 = BloodOath.new("1987-04-21", cult2, follower8)
pact9 = BloodOath.new("1987-04-22", cult3, follower9)
pact10 = BloodOath.new("1987-04-23", cult1, follower10)
pact11 = BloodOath.new("1988-04-20", cult1, follower1)
pact12 = BloodOath.new("1989-04-20", cult1, follower2)
pact13 = BloodOath.new("1990-04-20", cult2, follower3)
pact14 = BloodOath.new("1987-05-20", cult2, follower4)
pact15 = BloodOath.new("1987-06-20", cult1, follower5)
pact16 = BloodOath.new("1987-07-20", cult1, follower6)
pact17 = BloodOath.new("1987-04-21", cult2, follower7)
pact18 = BloodOath.new("1987-04-22", cult1, follower8)
pact19 = BloodOath.new("1987-04-23", cult1, follower9)
pact20 = BloodOath.new("1999-04-20", cult3, follower3)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
