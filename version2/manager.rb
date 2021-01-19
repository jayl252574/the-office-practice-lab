class Manager

    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        self.name = name
        self.department = department
        self.age = age
        self.class.all << self
    end

    def self.all
        @@all
    end

    def employees
        Employess.all.select {|employee| employee.manager == self}
    end

    def roles
        employees.map(&:role)
    end

    def self.all_departments
        all.map(:department).uniq
    end

    def self.average_age
        all.map(:age).sum / all.length.to_f
    end



end