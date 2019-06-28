require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
  
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cult1 = Cult.new("Cult of the Dead Cow", 1979, "cyberspace", "idon'tknow")
cult2 = Cult.new("Cult of the Living", 1990, "China", "I DO KNOW")
cult3 = Cult.new("Cult of the Living", 1990, "China", "I DO KNOW")
follower1 = Followers.new("Moon Unit", 67, "Zaaap")
follower2 = Followers.new("Xigbar", 23, "Zaaap")
follower3 = Followers.new("Moon Unit", 85, "Zaaap")
follower4 = Followers.new("Ancient One", 126, "Zaaap")
follower1.join_cult("51-91-581",cult1)
follower1.join_cult("51-91-532",cult2)
follower2.join_cult("51-91-581",cult1)
follower3.join_cult("51-91-581",cult1)
follower4.join_cult("51-91-581",cult2)
binding.pry
puts "Mwahahaha!" # just in case pry is buggy and exits
