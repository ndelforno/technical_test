#1. Write code to ensure a variable exists

# answer:
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

# answer:
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


#3 Write a program that prints the numbers from 1 to 30.
# But for multiples of two print “Word” instead of the number and for the multiples of five print “Jack”. For numbers which are multiples of both two and five print “WordJack”

# answer:
for i in 1..30 do
  if i % 2 == 0 && i % 5 == 0
    puts "WordJack"
  elsif i % 5 == 0
    puts "Jack"
  elsif i % 2 == 0
    puts "Word"
  else
    puts i
  end
end


#4. What may happen if Foo.find(info[:id]) is called multiple times concurrently with the following code?

# answer:
# I am sorry but I am not sure to really understand this question, my guess would be that Foo.find(info[:id]) can only find one id at the time so it will return the same id over and over.


#5. How could the following data structure be improved?

# answer:
# - create multiples tables instead of one: a table for person and a table for pet
# - join these tables with one to many relationship by providing pet with a person_id
# - give a last_name attribute to differenciate person with same name (not mandatory because id could do that)
