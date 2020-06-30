class Manager
    attr_accessor :employees
    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        new_hire = Employee.new(name, salary, self)
        @employees << new_hire
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        total = 0
        self.all.each {|manager| total += manager.age}
        total / self.all.size
    end
end
