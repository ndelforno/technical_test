#1. Write code to ensure a variable exists

my_var = 10

if defined?(my_var)
  puts true
else
  puts false
end


#2. Find a way to group the following collection by string length:
my_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
# Your result must be in the form of a hash: { 5 => [‘April’, ‘March’], 4 => [‘July’, ‘June’], 6 => [ ... ], ... } and ensure that the grouped values are in sorted order.
# Note: ​your resulting hash’s keys do not have to be in any particular order​.

my_hash = {}
my_array.each do |word|
  current_length = word.length
  if my_hash.has_key?(current_length)
    my_hash[word.length] << word
  else
    my_hash[word.length] = [word]
  end
end

my_hash.each do |k,v|
  my_hash[k] = v.sort
end

p my_hash
