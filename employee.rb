# employee has fn, ln, salary, active status

# "Majora Carter makes $80000 per year."


# array
# employee1 = ["Majora", "Carter", 80000, true]

# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."


# employee2 = ["Danilo", "Campos", 70000, false]

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# hash

employee1 = {"first_name" => "Danilo", "salary" => 80000, "last_name" => "Campos", "active" => true}

p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."

# real
# employee2 = {:first_name => "Majora", :last_name => "Carter", :salary => 70000, :active => false}

# fancy syntax
employee2 = {first_name: "Majora", last_name: "Carter", salary: 70000, active: false}

p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."


# class