
#1
def foobar_number()
  for i in 1..100 do
    if i % 3 == 0 && i % 5 == 0
      puts "Foobar"
    elsif i % 5 == 0
      puts "Bar"
    elsif i % 3 == 0
      puts "Foo"
    else
      puts i
    end
  end
end

foobar_number()

#2
def count_even(n)
  count = 0
  for i in 0..n do
    if i % 2 ==  0
      count += 1
    end
  end
  return count
end

puts count_even(100)

#3

3..18

#4

words = ['one', 'one', 'two', 'three', 'three', 'two']

p words.uniq
