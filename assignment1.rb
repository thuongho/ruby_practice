the_string = <<-HERE 
               this string has leading space and too    MANY tabs and sPaCes betweenX
   the indiVidual Words in each Line.X
  each Line ends with a accidentally  aDDED  X.X
            in this lab you wilL WRITE code that "sAnITizES" this string by normalizingX
   ("normalizing" means   capitalizing sentences   and setting otherX
  characters to lower case)     and removes in       the extra spaces between WOrds.X
HERE

# 4.1 Squeeze
puts ("*" * 20)
puts "4.1 Squeeze"
puts ("*" * 20)
print the_string.squeeze(" ")
puts ""

# 4.2 Downcase
puts ("*" * 20)
puts "4.2 Downcase"
puts ("*" * 20)
print the_string.downcase
puts ""

#4.3 Upcase
puts ("*" * 20)
puts "4.3 Upcase"
puts ("*" * 20)
print the_string.upcase
puts ""

#4.4 Capitalize
puts ("*" * 20)
puts "4.4 Capitalize"
puts ("*" * 20)
# I can't figure this one out
#the_string.gsub!(/^\s*\w/)
the_string.split(/\n/).each do |word| puts word.split(/^\s*/).to_s.capitalize end
puts "" 

#4.5 Removing the ending 'X'
puts ("*" * 20)
puts "4.5 Removing the ending 'X'"
puts ("*" * 20)
print the_string.gsub(/[X]$/, "")
puts ""

=begin
#4.6 Each_byte
puts ("*" * 20)
puts "4.6 Each_byte"
puts ("*" * 20)
a = the_string.each_byte.to_a
a.each do
  |num| puts num.chr + " | " + num.to_s + " | " + ("0x" + ("%x" % num))
end
puts ""
=end

#4.7 Split
puts ("*" * 20)
puts "4.7 Split"
puts ("*" * 20)
print the_string.split
puts ""

#4.8 Crypt
puts ("*" * 20)
puts "4.8 Crypt"
puts ("*" * 20)
salt = "ruby"
print the_string.crypt(salt)
puts ""

#4.9 Replace the Contents of a String
puts ("*" * 20)
puts "4.9 Replace the Contents of a String"
puts ("*" * 20)
a = the_string[0..99].reverse.squeeze.upcase
print the_string.gsub(the_string[0..99], a)
puts ""

#4.10 Inspect
puts ("*" * 20)
puts "4.10 Inspect"
puts ("*" * 20)
salt = "ruby"
print the_string.gsub(the_string[0..99], a).inspect
puts ""