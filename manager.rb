module Actualize
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
end