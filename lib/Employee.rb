class Employee
attr_reader :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        @@all.select {|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        @@all.find {|employee| employee.manager_name}
    end

    def tax_bracket
        @@all.select do |employee|
            (employee.salary - self.salary).abs <= 1000
        end
    end


end