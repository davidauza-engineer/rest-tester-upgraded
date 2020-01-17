#!/usr/bin/env ruby
require 'rest-client'

def request_integer_input
  gets.chomp.to_i
end

def print_options(url_array)
  url_array.each_index do |index|
    next if index == 0
    puts "Press #{index} to execute a GET request to #{url_array[index]}" if
        index < 5
    puts "Press #{index} to execute a POST request to #{url_array[1]}" if
        index == 5
    puts "\n" if index == (url_array.count - 1)
  end
end

url_array = %w['' http://localhost:3000/users http://localhost:3000/users/1
http://localhost:3000/users/new http://localhost:3000/users/1/edit '']

puts "\nWelcome\n\n"

print_options(url_array)

user_input = request_integer_input

until user_input.between?(1, url_array.length - 1)
  puts "\nNot a valid entry.\n\n"
  print_options(url_array)
  user_input = request_integer_input
end

puts
puts RestClient.get(url_array[user_input]) if user_input < 5
puts RestClient.post(url_array[1], "") if user_input == 5
puts
