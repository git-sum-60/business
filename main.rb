require "./employee"
require "./email_reportable"
require "./manager"
require "./intern"

employee1 = Employee.new({
  :first_name => "Danilo",
  :last_name => "Campos",
  :salary => 80000,
  :active => true
})
p "salary pre raise"
p employee1.print_info
employee1.give_annual_raise
p "salary post raise"
p employee1.print_info
p employee1.first_name

p employee1.print_info
employee1.first_name = "Mark"
p employee1.print_info


employee2 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 70000, active: false)
p employee2.print_info

# employee2.send_report







manager1 = Manager.new(first_name: "Manny", last_name: "Williams", salary: 100000, active: true, employees: [employee1, employee2])

p manager1.send_report

manager1.give_all_raises

p manager1.employees


p manager1.employees
manager1.fire_all_employees
p manager1.employees


# intern can do everything an employee can do, and can also send reports





intern = Intern.new(first_name: "Ingrid", last_name: "Smith", salary: 0, active: true)

intern.print_info

intern.send_report

# intern.fire_all_employees