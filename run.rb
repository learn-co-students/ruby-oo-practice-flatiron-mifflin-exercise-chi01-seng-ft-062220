require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'



emp1 = Employee.new("Kathleen", 10000, "Dan")
emp2 = Employee.new("Katie", 20000, "Heather")
emp3 = Employee.new("Emily", 20500, "Dan")

man1 = Manager.new("Dan", "Faculty", 45)
man2 = Manager.new("Heather", "Staff", 48)

binding.pry

puts "done"
