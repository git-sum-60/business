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
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def salary
    @salary
  end

  def active
    @active
  end

  def first_name=(input_first_name)
    @first_name = input_first_name
  end

  def print_info
    "#{first_name} #{last_name} makes $#{salary} per year."
  end  

  def give_annual_raise
    @salary *= 1.05
  end
end



employee1 = Employee.new("Danilo", "Campos", 80000, true)
p "salary pre raise"
p employee1.print_info
employee1.give_annual_raise
p "salary post raise"
p employee1.print_info
p employee1.first_name

p employee1.print_info
employee1.first_name = "Mark"
p employee1.print_info


employee2 = Employee.new("Majora", "Carter", 70000, false)
p employee2.print_info

