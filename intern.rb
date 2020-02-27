module EmailReportable
  def send_report
    p "going to send a report..."
    # do some logic here to send emails etc
    p "just sent all the reports"
  end
end


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
    p "#{first_name} #{last_name} makes $#{salary} per year."
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
  
  include EmailReportable
end





manager1 = Manager.new(first_name: "Manny", last_name: "Williams", salary: 100000, active: true, employees: [employee1, employee2])

p manager1.send_report

# manager1.give_all_raises

# p manager1.employees


# p manager1.employees
# manager1.fire_all_employees
# p manager1.employees


# intern can do everything an employee can do, and can also send reports



class Intern < Employee
  include EmailReportable
end


intern = Intern.new(first_name: "Ingrid", last_name: "Smith", salary: 0, active: true)

intern.print_info

intern.send_report

# intern.fire_all_employees