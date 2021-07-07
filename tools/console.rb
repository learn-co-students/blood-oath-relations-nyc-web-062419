require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Debbie homemade cookie","New York",1847,"Please take one")
cult2 = Cult.new("Werewolf","The Woods",1747,"Please take two")
cult3 = Cult.new("Vampire","Transylvania",1419,"Spooky")

follower1 = Follower.new("Anthony",25,"Just do it")
follower2 = Follower.new("Alex",25,"Just don't do it")
follower3 = Follower.new("Joe",18,"Why am I here?")

bloodoath1 = Bloodoath.new(2019-06-28,cult1,follower3)
bloodoath2 = Bloodoath.new(2019-01-01,cult2,follower1)
bloodoath3 = Bloodoath.new(2019-03-05,cult1,follower2)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
