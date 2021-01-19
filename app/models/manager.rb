class Manager

    attr_accessor :name, :age, :department
    @@all = []
    def initialize(name, age, department)
        self.name = name
        self.age = age
        self.department = department
        self.class.all << self
    end

    def self.all
        @@all
    end

    def roles
        Role.all.select{|role| role.manager == self}
    end

    def employees
        roles.map{|role| role.employee}.uniq
    end

    def self.all_departments
        Role.all.map{|role| role.manager.department}.uniq
    end

    def self.average_age
        all.sum{|manager| manager.age} / all.count.to_f
    end

    



end
