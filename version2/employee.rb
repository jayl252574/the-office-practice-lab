class Employee

    attr_accessor :name, :salary, :manager, :role
    @@all = []

    def initialize(name, salary, manager, role)
        self.name = name
        self.salary = salary
        self.manager = manager
        self.role = role
        self.class.all << self
    end

    def self.all
        @@all 
    end

    def self.paid_over(amount)
        all.select{|employee| employee.salary > salary}
    end

    def self.find_by_department(string)
        all.find{|emplyee| employee.manager.department == string}
    end

    def self.search_by_role(string)
        all.select{|employee| employee.role == string}
    end

    def get_promoted(role)
        self.role = role
        self.salary += 2000
    end
    
end