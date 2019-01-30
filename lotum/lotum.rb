

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
