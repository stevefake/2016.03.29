# Employee Reviews

## 2016.03.29

## About Me 

Employee Reviews is an application which allows the user to perform the following actions via the web:
* List Employees
* Read a Single Employee
* Create an Employee
* Delete an Employee
* Change the Name of a employee

## Included

* application file
* test suite for the software program

## Legacy version
### Description

Allows the user to keep track of a department's staff, and the details of each employee within a department.

### Features

* Create new departments, each with their own empty "staff" array:
```
marketing = Department.new("Marketing")
```
* Create new employees:
```
new_employee = Employee.new(name, phone, email, salary )
```
* Add employees to a department:
```
marketing.add_employee(employee)
```
* Add text reviews to each employee using:
```
new_employee.add_employee_review(review)
```
* Give raises to an entire department.
* Give raises to specific employees in a department based upon criteria of the user's choosing.
* Scan employee review text and evaluate an employee's performance.
* Access an employees performance rating rating at any time.

Project was estimated to take 25 hours of work, but was completed in 16 hours.
