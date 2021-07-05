require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry

cult1 = Cult.new("Flatiron", "NYC", 2011, "Learn Love Code", 20)
cult2 = Cult.new("Battery Park", "NYC", 1900, "Who needs a motto?", 18)

fol1 = Follower.new("Steve", 34, "huh")
fol2 = Follower.new("Andy", 20, "huh")
fol3 = Follower.new("Mike", 26, "Learn Love Code")
fol4 = Follower.new("Alice", 16, "huh")
fol5 = Follower.new("Beth", 40, "ok")

bo1 = Bloodoath.new("2013-02-02", cult1, fol1)
bo2 = Bloodoath.new("2013-02-02", cult1, fol3)
bo3 = Bloodoath.new("2013-02-02", cult1, fol2)
bo4 = Bloodoath.new("2013-02-02", cult1, fol2)
bo5 = Bloodoath.new("2013-02-02", cult2, fol1)
bo6 = Bloodoath.new("2013-02-02", cult2, fol2)
bo7 = Bloodoath.new("2013-02-02", cult2, fol4)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
