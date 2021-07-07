 class Employee
    #Bill.name = "bill" returns the persons name as string
    attr_reader :name, :department 
    #Bill.salary = 5 retruns the person salary
    #Bill.manager = "Tom" returns the manager as string
    attr_accessor :manager, :salary
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self     
    end
    def self.all
        @@all
    end    
    ##an array of all the employees names 
    def self.name
       @@all.select{|all_names| all_names.name} 
    end 
    #will iterate through the array and find the salarys over 2 and put an array of them
    #I used select because I wanted a new array that was a different index than the original array
    def self.paid_over
        @@all.select{|more_that_2| more_that_2.salary > 2}
    end
    def self.find_by_department(department)
        #String argument == department
        #first employee == .find
        #return the department name
        #first employee whose manager is working in that department
        Manager.all.select do |depart|
            if depart.department == department
                man = depart.name
                    Employee.all.find do |emply|
                      if man == emply.manager
                        return emply.name
                    end
                end
            end   
        end             
    end   
end
