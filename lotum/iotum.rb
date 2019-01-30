
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

#5 Include the technologies you would use and why you would use them, as well as a high level explanation of how you would code the application.
# To build  a web based chat application, I would use these technologies:
# - ruby on rails and javascript,
# - action cable (web socket integration) because It's a full-stack offering that provides both a client-side JavaScript framework and a server-side Ruby framework.
# - a gem called Clearance for sigin/signup
# - ActiveJob to perform task in background
#
# I would start to build the laying foundation of the application : database (user and message models), associations between models, clearance installation.
# then add a chat page to the app and add a message form
# build chat controller action
# render all messages in chat page
# Configure ActionCable on client side: (routes, tag, jquery ) on server side : process message received from client side and brodcast new message and configure activeJob
