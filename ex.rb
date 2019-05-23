# frozen_string_literal: true

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Exercise 1
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |value| puts value }

# Exercise 2
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |value| puts value if value > 5 }

# Exercise 3
new_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select(&:odd?)
puts new_array

# Exercise 4
array.push(11)

array.unshift(0)

# Exercise 5

array.delete(11)

array.push(3)

array.uniq!

pust array

# Hash

h = { a: 1, b: 2, c: 3, d: 4 }

h.delete_if { |_key, value| value > 2 }

puts h

contact_data = [['joe@email.com', '123 Main st.', '555-123-4567'],
                ['sally@email.com', '404 Not Found Dr.', '123-234-3454']]

contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }

contacts.each_with_index do |(key, value), index |
    contacts[key] = contact_data[index]
end

puts contacts

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |value| value.start_with?('s', 'w')}
puts arr


a = ['white snow', 'winter wonderland', 'melting ice',
    'slippery sidewalk', 'salted roads', 'white trees']

a = a.map(&:split).flatten
puts a

def hello
    puts 'hello'
end

hello




array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for i in 0..array.length 
    puts array[i]
end