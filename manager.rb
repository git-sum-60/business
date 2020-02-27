# employee has fn, ln, salary, active status

# "Majora Carter makes $80000 per year."


# array
# employee1 = ["Majora", "Carter", 80000, true]

# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."


# employee2 = ["Danilo", "Campos", 70000, false]

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# hash

# employee1 = {"first_name" => "Danilo", "salary" => 80000, "last_name" => "Campos", "active" => true}

# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."

# # real
# # employee2 = {:first_name => "Majora", :last_name => "Carter", :salary => 70000, :active => false}

# # fancy syntax
# employee2 = {first_name: "Majora", last_name: "Carter", salary: 70000, active: false}

# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."

# class
class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :active
  
  def initialize(input_options)
    @first_name = input_options[:first_name]  
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    "#{first_name} #{last_name} makes $#{salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end



# employee1 = Employee.new({:first_name => "Danilo",:last_name => "Campos", :salary => 80000,:active => true})

employee1 = Employee.new({
  :first_name => "Danilo",
  :last_name => "Campos",
  :salary => 80000,
  :active => true
})
# p "salary pre raise"
# p employee1.print_info
# employee1.give_annual_raise
# p "salary post raise"
# p employee1.print_info
# p employee1.first_name

# p employee1.print_info
# employee1.first_name = "Mark"
# p employee1.print_info


employee2 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 70000, active: false)
# p employee2.print_info

# employee2.send_report

class Manager < Employee
  attr_reader :employees
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    p "giving everyone a raise..."
    # pseudocode
    # find all the employees for this particiular manager
    # go to each of them
    employees.each do |employee|
      employee.give_annual_raise
    end
    # give them a raise
  end

  def fire_all_employees
    # find the employees
    employees.each do |employee|
      employee.active = false
    end
    # loopthrough them
    # fire them
  end
  
  def send_report
    p "going to send a report..."
    # do some logic here to send emails etc
    p "just sent all the reports"
  end
end





manager1 = Manager.new(first_name: "Manny", last_name: "Williams", salary: 100000, active: true, employees: [employee1, employee2])

# p manager1.employees

# manager1.give_all_raises

# p manager1.employees


p manager1.employees
manager1.fire_all_employees
p manager1.employees