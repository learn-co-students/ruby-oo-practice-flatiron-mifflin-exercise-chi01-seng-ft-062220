class Employee
    attr_accessor :name, :manager, :department, :salary
    # attr_reader :salary, :department, :manager
    @@all = []
    
    # Employee#name
    # returns a String that is the employee's name
    # Employee#salary
    # returns a Fixnum that is the employee's salary 
    def initialize(name)
        @name = name
        @@all << self
    end
    
    # Employee#manager_name
    # returns a String that is the name of their manager
    def manager_name
        self.manager.name
        # Can be called using Employee.all[i], as opposed to a specific employee name since instances created by calling manager.hire_employee aren't given unique names.
    end

    # Employee.all
    # returns an Array of all the employees
    def self.all
        @@all
    end

    # Employee.find_by_department
    # takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
    def self.find_by_department(dept_name)
        self.all.find do |employees| 
            if employees.department == dept_name 
                return employees.name
            end
        end
    end


    # Employee.paid_over
    # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
    def self.paid_over(amount)
            self.all.select {|team| team.salary > amount}.map {|recipients| recipients.name} 
    end


    # Employee#tax_bracket
    # returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
    def tax_bracket
        lower_boundary = self.salary - 1000
        upper_boundary = self.salary + 1000
        Employee.all.select {|team| lower_boundary <= team.salary && team.salary <= upper_boundary}.map{|grouped| grouped.name}.reject{|names| names == self.name}
        # Can be called using Employee.all[i], as opposed to a specific employee name since instances created by calling manager.hire_employee aren't given unique names.
    end
end
#worked