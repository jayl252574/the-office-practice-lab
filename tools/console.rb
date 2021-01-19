require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner
role1 = Role.new('janitor')
role2 = Role.new('secretary')
role3 = Role.new('director')
role4 = Role.new('ceo')

manager1 = Manager.new('gabe', 'hr', 23)
manager2 = Manager.new('pat', 'tech', 27)
manager3 = Manager.new('andrew', 'pr', 30)
manager4 = Manager.new('will', 'communication', 34)
manager5 = Manager.new('sandra', 'design', 65)

employee1 = Employee.new('ari', 40000, manager1, role1)
employee2 = Employee.new('nanako', 50000, manager2, role2)
employee3 = Employee.new('claire', 60000, manager3, role3)
employee4 = Employee.new('rina', 70000, manager4, role4)
employee5 = Employee.new('cade', 45000, manager4, role2)
employee6 = Employee.new('bella', 55000, manager3, role1)
employee7 = Employee.new('tony', 65000, manager3, role4)
employee8 = Employee.new('bill', 75000, manager1, role3)
employee9 = Employee.new('sally', 80000, manager5, role3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line