require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


michael = Manager.new("Michael", "Sales", 40)
jan = Manager.new("Jan", "Operations", 38)
david = Manager.new("David", "Corporate", 43)


michael.hire_employee("Pam", 42000)
michael.hire_employee("Dwight", 40000)

jan.hire_employee("Kevin", 44000)
jan.hire_employee("Toby", 60000)

david.hire_employee("Jim", 42000)
david.hire_employee("Stanley", 45000)


Employee.find_by_department("Corporate")
Employee.find_by_department("Operations")
Employee.find_by_department("Sales")

Employee.all
Manager.all

Manager.all_departments
Manager.average_age

Employee.all
Employee.paid_over(40000)

ryan = Employee.new("Ryan")
ryan.salary = 43000
ryan.manager = michael
ryan.department = michael.department


binding.pry
puts "done"
