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

class Employee
  attr_accessor :first_name, :last_name, :salary, :active
  # attr_reader :first_name, :last_name, :salary, :active
  # attr_writer :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name] || "John"
    @last_name = input_options[:last_name] || "Smith"
    @salary = input_options[:salary] || 25000
    @active = input_options[:active] || false
  end

  def full_name
    puts "#{first_name} #{last_name}"
  end

  def email
    puts first_name + last_name + ".gmail.com"
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info
# employee1.full_name
# employee2.full_name
# employee3 = Employee.new({})
# employee3.print_info
# employee1.email
p employee1.first_name
p employee1.last_name
p employee1.salary
p employee1.active

# employees = []
# 100.times do
#   employees << Employee.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: rand(25000..150000), active: true)
# end

# p employees
