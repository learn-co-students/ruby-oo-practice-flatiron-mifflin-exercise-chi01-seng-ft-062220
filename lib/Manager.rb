class Manager
    #returns the manager name but does not allow you to change it
    attr_reader :name
    #allows you to return department and age 
    attr_accessor :department, :age, :employee
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self    
    end
    def self.all
        @@all
    end
    def employees
        Employee.all.select{|my_employees| my_employees.manager == self.name}     
    end 
    def hire_employee(name, salary)
         Employee.new(name, salary, self.name)
    end 
    #Use map to iteraate throught the array and grab all the departments 
    #map gives the same index array as inital
    def self.all_departments
        @@all.map{|all_departments| all_departments.department}
    end   
    #map to iteraate throught the array and grab all the ages
    #map gives the same index array as inital
    #fount the sum of the top array divided by the size of the array
    def self.average_age
        all_ages = @@all.map{|ages| ages.age}
        all_ages.sum / all_ages.size
    end    
end
