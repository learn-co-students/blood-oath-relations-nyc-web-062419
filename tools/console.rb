require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
  
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cult1 = Cult.new("Cult of the Dead Cow", 1979, "cyberspace", "idon'tknow")
follower1 = Followers.new("Moon Unit", 67, "Zaaap")
binding.pry
puts "Mwahahaha!" # just in case pry is buggy and exits
