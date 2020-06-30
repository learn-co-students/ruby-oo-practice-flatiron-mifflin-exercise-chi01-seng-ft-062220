class Manager
    attr_accessor :name, :department, :age
    @@all = []
    # Manager#name
    # returns a String that is the manager's name
    # Manager#department
    # returns a String that is the department that the manager oversees
    # Manager#age
    # returns a Fixnum that is the age of the manager
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end
    
    # Manager.all
    # returns an Array of all the managers
    def self.all
        @@all 
    end

    # Manager#employees
    # returns an Array of all the employees that the manager oversees
    def employees
        Employee.all.select {|employed| employed.manager == self}
    end
        
    # Manager#hire_employee
    # takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
    def hire_employee(name, salary)
        name = Employee.new(name)
            name.salary = salary
            name.manager = self
            name.department = self.department

    # Method works, but doesn't assign a unique name to each instance of the Employee class that it's created. 
    end

    # Manager.all_departments
    # returns an Array of all the department names that every manager oversees
    def self.all_departments
        self.all.select {|mgmt| mgmt.department}.map {|dept| dept.department}
    end
    
    # Manager.average_age
    # returns a Float that is the average age of all the managers
    def self.average_age
        all_ages = self.all.map {|mgmt| mgmt.age}
        all_ages.sum.to_f/all_ages.count
    end
end
