class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end
class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      (@hourly_rate * @hours_worked)*0.82
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
    end

    def calculate_salary
    	@salary*0.82
    end
end

class TedEmployee < Employee
    def initialize(name, email, salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
        @salary = salary
    end

    def calculate_salary
      (@salary + (@hours_worked - 40) * @hourly_rate) * 0.82
    end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
      @employees.each do |employee|
      	puts "This month #{employee.name} gets: #{employee.calculate_salary}€"
      	puts "Mail sent to: #{employee.name}"
      end
      output = @employees.reduce(0.0) do |sum, employee|
      	sum += employee.calculate_salary
      end
      puts output

  end
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = TedEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
lluc = HourlyEmployee.new('Lluc', 'forçajunior@example.com', 15, 30)
alex = HourlyEmployee.new('Alex', 'alex@example.com', 15, 50)

employee_array = [josh, nizar, ted, lluc, alex]

payroll = Payroll.new(employee_array)

payroll.pay_employees	

















