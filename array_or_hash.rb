# Student account generator data as an array of hashes
students_data_array = [
 {
   name: "Rosie Martinez",
   id: 123256,
   email: "rmartinez256@adadev.org"
 },
 {
   name: "Joe Liu",
   id: 349222,
   email: "jliu222@adadev.org"
 },
 {
   name: "Sally Sue",
   id: 999999,
   email: "ssue999@adadev.org"
 }
]
puts "Here's the student data array:"
puts students_data_array
puts
# Arrays allow for sorting information according to our criteria
# Let's organize the data alphabetically based on first name
puts "Here's the student data array in ascending first name order"
# implements selection sort on name value
(students_data_array.count - 1).times do |j|
  # for each index in the array, select the right data set for that index
  # Note: if all except the last index have the right data, then by default
  #       the last index will have the right data. That's why this loop runs
  #       (student count - 1) times.
  select_index = j # assume that at index j, the correct data is present
  i = j + 1 # starting at the index following the current index, j
  # go through all entries after index j to check if any data is better suited
  # for index j based on ascending first name criteria
  while i < students_data_array.count
    if students_data_array[select_index][:name] > students_data_array[i][:name]
      # found a better data to place at selected index j
      select_index = i
    end
    i += 1
  end
  if !(select_index == j) # we found a better data set for index j
    # swap data at index j with data at select_index
    temp = students_data_array[j]
    students_data_array[j] = students_data_array[select_index]
    students_data_array[select_index] = temp
  end
end
puts students_data_array

puts "-------------------------------------------------------------------------"
puts
# Student account generator data as a hash of hashes
students_data_hash = {
  "Rosie Martinez" => {
    id: 123256,
    email: "rmartinez256@adadev.org"
  },
  "Joe Liu" => {
    id: 349222,
    email: "jliu222@adadev.org"
  },
  "Sally Sue" => {
    id: 999999,
    email: "ssue999@adadev.org"
  }
}

puts "Here's the student data hash"
puts students_data_hash
# Hashes allow us to do quick look ups
student_lookup = true
while student_lookup
  print "Enter the full name of the student whose information you'd like to have: "
  name_key = gets.chomp
  if students_data_hash[name_key]
    puts "Here's the information for #{name_key}"
    puts students_data_hash[name_key]
  else
    puts "Information not found for #{name_key}"
  end
  
  puts "Would you like to do another look up? Enter 'y' or 'Y' for yes."
  student_lookup = (gets.chomp.downcase == 'y')
end
