class Manager
attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end
    
    def employees
        Employee.all.select {|employee| employee.manager_name == self.name}
    end

    def self.all
        @@all
    end 

    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
        employees << self
    end

    def self.all_departments
        Manager.all.map {|employee| employee.department}
    end

    def self.average_age
        sum = 0.0
        @@all.each {|manager| sum +=manager.age}
        average_age = sum/@@all.length
    end

end