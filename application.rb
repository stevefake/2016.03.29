require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require './migrations'
require './department'
require './employee'

require 'rack/test'

require 'json'
require 'pry'



ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'test.sqlite3'
)
ActiveRecord::Migration.verbose = false

# Your application should be able to.
#
# List Employees
##GET /employees

  dept = Department.create(name: "Marketing")
  # employees = []
  employee_dan = Employee.create!(name: "Dan", email: "d@mail.com", phone: "914-555-5555", salary: 50000.00)
  dan = Employee.find(employee_dan.id)
  # dan.name
  # dept << employee_dan

  employee_bob = Employee.create!(name: "Bob", email: "b@mail.com", phone: "914-666-6666", salary: 60000.00)
  bob = Employee.find(employee_bob.id)
  # bob.name
  # dept << employee_bob

  employee_marvin = Employee.create!(name: "Marvin", email: "m@mail.com", phone: "914-777-7777", salary: 70000.00)
  marvin = Employee.find(employee_marvin.id)
  # marvin.name
  dept.employees << employee_marvin

  # dept.employees << new_employee
  # assert_equal [new_employee], d.employees
  # assert_equal d, new_employee.department

  # get '/' do
  #   # binding.pry # avail methods .where, .update .exists? .select .enum .respond_to? .create! .to_param .columns_hash .columns .get_primary_key .primary_key & Employee#methods like .add_employee_review & Employee.methods .paid_less_than_average & instance vars like @primary_key
  #   # hash = Employee.columns_hash
  #   #  = hash["name"]
  #   # Employee.all.to_json
  #   # Employee.body.to_json
  #   # employee = Employee.find
  #   # employee.to_json
  #       # Employee.to_json
  #   # "List of employees: #{Employee.all}"
  # end



# get '/' do
#       # get '/employees'   # the 'rack/test' allows us to test the get
#     json_reponse = JSON.parse(last_response.body)
#     assert_equal [], last_response.body  # => returns list of students as a string
#     assert_equal "Bo", json_reponse.first["name"]
#   end

  # ENDPOINT # list of employees
  #
  # get '/employees' do
  #   Employees.all.to_json
  # end
  #
  # localhost.4567/employees
  #
  # before do 'application/json'
  # end


# Read a Single Employee
##GET /employees :id

# Create an Employee
##POST /employees

# Delete an Employee
##DELETE /employees

# Change the Name of a employee.
##PATCH /employees :id
