require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
Bill = Employee.new("bill", 5, "Tom")
Timmy = Employee.new("timmy", 10, "Tom")
Sam = Employee.new("sam", 2, "Erik")

Tom = Manager.new("Tom", "evo and sales", 40)
Erik = Manager.new("Erik", "hr", 32)

#binding.pry
puts "done"
