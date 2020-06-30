class Employee
    attr_accessor :manager
    attr_reader :name, :salary

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

    def self.paid_over(number)
        self.all.select {|employee| employee.salary > number}
    end

    def self.find_by_department(department)
        result = Manager.all.find {|employee| employee.department == department}
        result.employees[0].name
    end

    def tax_bracket
        upper_limit = @salary + 1000
        lower_limit = @salary - 1000
        @@all.select do |employee| 
            employee.salary > lower_limit && employee.salary < upper_limit #&& employee != self
        end
    end
end
