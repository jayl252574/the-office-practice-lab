class Role
    @@all = []
    attr_reader :name, :manager, :employee
    def initialize(name, manager, employee)
        @name = name 
        @manager = manager
        @employee = employee
        self.class.all << self
    end

    def self.all
        @@all
    end

    def employees
        all.select {|employee| role.employee == name}.map {|role| role.employee}.uniq
        #all.map(&:employee)
    end

    def managers
        Role.all.select {|role| role.name == name}.map {|role| role.manager}.uniq
    end

    def add_employee(new_name, new_salary, manager)
        new_employee = Employee.new(new_name, new_salary)
        Role.new(self.name, manager, new_employee)
    end

end