class Role

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|employee| employee.role == self}
    end

    def managers
        employees.map(&:manager)
    end

    def add_employee(string,salary,manager)
        self.new(self)
        Employee.new(string,salary,manager,self)
    end
