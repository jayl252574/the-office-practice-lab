class Employee

    attr_accessor :name, :salary
    @@all = []

    def initialize(name, salary)
        self.name= name
        self.salary = salary
        self.class.all << self
    end


    def self.all
        @@all
    end

    def manager
        Role.all.find{|role| role.employee == self}.manager
    end

    def role
        Role.all.find{|role| role.employee == self}
    end

    def self.paid_over(pay)
        all.select {|employee| employee.salary > pay}
    end

    def self.find_by_department(search_department)
        Role.all.find{|role| role.manager.department == search_department}.employee
    end

    def self.search_by_role(string)
        all.select{|employee| employee.role.name == string}
    end

    def get_promoted(new_role)
        Role.all.delete_if{|role| role.employee == self}
        self.salary = new_role.employee.salary
        Role.new(new_role.name, new_role.manager, self)
    end
    


end
