require 'rest-client'

def request_integer_input
  gets.chomp.to_i
end

url = 'http://localhost:3000'

options = "Press 1 to execute a GET request to #{url}"
puts "\nWelcome\n\n#{options}\n\n"
user_input = request_integer_input

while user_input != 1
  puts "\nNot a valid entry. \n\n#{options}\n\n"
  user_input = request_integer_input
end

puts
puts RestClient.get(url)
