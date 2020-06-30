require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new("Michael", "Paper", 40)
michael.hire_employee("Jim", 40000)
michael.hire_employee("Dwight", 39500)
angela = Manager.new("Angela", "Accounting", 32)
toby = Manager.new("Toby", "HR", 50)
angela.hire_employee("Kevin", 32000)
angela.hire_employee("Oscar", 52000)
jim = michael.employees[0]



binding.pry
puts "done"


