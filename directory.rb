def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end
# and then print them
def print_header
puts "The students of Villains Academy"
puts "-------------"
end
def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    # 2. read the input and save it into  variable
    selection = gets.chomp
    # 3. do what the user asked
    case selection
    when "1"
      # input the students
    when "2"
      # show ths students
    when "9"
      exit # this will caouse the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end

end
#nothing happens until we call the methods
interactive_menu
students = input_students
print_header
print(students)
print_footer(students)
