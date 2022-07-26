require "faker"

# def sum(array)
#   sum = 0
#   for num in array
#     sum += num
#   end
#   return sum
# end

# p sum([5, 2, 6, 1])

# def bubble_sort(array)
#   index = 0
#   array.length.times do
#     while index + 1 < array.length
#       if array[index + 1] < array[index]
#         array[index], array[index + 1] = array[index + 1], array[index]
#       end
#       index += 1
#     end
#     index = 0
#   end
#   return array
# end

# p bubble_sort([6, 5, 3, 1, 8, 7, 2, 4])

# def insert_sort(array)
#   index = 0
#   while index < array.length
#     i_index = index
#     while i_index > 0
#       if array[i_index] < array[i_index - 1]
#         array[i_index], array[i_index - 1] = array[i_index - 1], array[i_index]
#       end
#       i_index -= 1
#     end
#     index += 1
#   end
#   return array
# end

# p insert_sort([6, 5, 3, 1, 8, 7, 2, 4])

# class Employee
#   attr_accessor :first_name, :last_name, :salary, :active
#   # attr_reader :first_name, :last_name, :salary, :active
#   # attr_writer :first_name, :last_name, :salary, :active

#   def initialize(input_options)
#     @first_name = input_options[:first_name] || "John"
#     @last_name = input_options[:last_name] || "Smith"
#     @salary = input_options[:salary] || 25000
#     @active = input_options[:active] || false
#   end

#   def full_name
#     puts "#{first_name} #{last_name}"
#   end

#   def email
#     puts first_name + last_name + ".gmail.com"
#   end

#   def print_info
#     puts "#{first_name} #{last_name} makes #{salary} a year."
#   end

#   def give_annual_raise
#     @salary = 1.05 * @salary
#   end
# end

# employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
# employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info
# employee1.give_annual_raise
# p employee1.salary
# employee1.full_name
# employee2.full_name
# employee3 = Employee.new({})
# employee3.print_info
# employee1.email
# p employee1.first_name
# p employee1.last_name
# p employee1.salary
# p employee1.active

# employees = []
# 100.times do
#   employees << Employee.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: rand(25000..150000), active: true)
# end

# p employees

# class Employee
#   attr_reader :first_name, :last_name, :active
#   attr_writer :active

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_options[:salary]
#     @active = input_options[:active]
#   end

#   def print_info
#     p "#{@first_name} #{@last_name} makes #{@salary} a year."
#   end

#   def give_annual_raise
#     @salary = 1.05 * @salary
#   end

#   def print_salary
#     @salary
#   end
# end

# employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
# employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info

# class Manager < Employee
#   def initialize(input_options)
#     super
#     @employees = input_options[:employees]
#   end

#   def employees
#     @employees
#   end

#   def give_all_raises
#     for employee in employees
#       employee.give_annual_raise
#       p employee.print_salary
#     end
#   end

#   def send_report
#     puts "Sending email..."
#     # use email sending library...
#     puts "Email sent!"
#   end
# end

# manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
# employee1.give_annual_raise
# employee1.print_salary
# manager.give_all_raises
# p manager.employees[0].print_salary

# numbers = [
#   [1, 2, 3],
#   [2, 2, 2],
#   [3, 2, 1],
# ]

# lines = []
# for array in numbers
#   row = ""
#   for num in array
#     row += ("*" * num) + " "
#   end
#   lines << row
# end

# # for line in lines
# #   puts line
# # end

# lines.each { |line| puts line }

# def avg(array)
#   sum = 0
#   length = 0
#   for num in array
#     sum += num
#     length += 1
#   end
#   return sum.to_f / length
# end

# p avg([1, 2, 3, 4, 5, 6])

# numbers = [1, 2, 4, 2]
# doubled_numbers = numbers.map { |number| number * 2 }
# # numbers.each do |number|
# #   doubled_numbers << number * 2
# # end
# p doubled_numbers

# items = [
#   { id: 1, body: "foo" },
#   { id: 2, body: "bar" },
#   { id: 3, body: "foobar" },
# ]

# ids = items.map { |item| item[:id] }
# p ids

# fruits = [
#   { "name" => "apple", "color" => "red" },
#   { "name" => "banana", "color" => "yellow" },
#   { "name" => "grape", "color" => "purple" },
# ]

# fruits_hash = fruits.map { |fruit| [fruit["name"], fruit["color"]] }.to_h
# p fruits_hash

# def reverse_a_string(string)
#   rev_string = ""
#   index = string.length - 1
#   while index >= 0
#     rev_string += string[index]
#     index -= 1
#   end
#   return rev_string
# end

# p reverse_a_string("edcba")

# def find_longest_word(phrase)
#   phrase_array = phrase.split(" ")
#   champ = phrase_array[0]
#   for word in phrase_array
#     if word.length > champ.length
#       champ = word
#     end
#   end
#   return champ
# end

# p find_longest_word("What is the longest word in this phrase?")
