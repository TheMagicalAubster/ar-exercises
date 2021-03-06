# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# # Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.


require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Khurram", last_name: "Virani2", hourly_rate: 60)
@store1.employees.create(first_name: "Smith", last_name: "John", hourly_rate: 60)
@store1.employees.create(first_name: "Pickles", last_name: "Lettuce", hourly_rate: 60)
@store1.employees.create(first_name: "Ham", last_name: "Cheese", hourly_rate: 60)
@store2.employees.create(first_name: "Pen", last_name: "Paper", hourly_rate: 60)
@store2.employees.create(first_name: "Chicken", last_name: "Nuggets", hourly_rate: 60)
@store2.employees.create(first_name: "Straw", last_name: "is Orange", hourly_rate: 60)
@store2.employees.create(first_name: "Grass", last_name: "is Green", hourly_rate: 60)
@store2.employees.create(first_name: "Buena", last_name: "is Dog", hourly_rate: 60)
@store2.employees.create(first_name: "Dasha", last_name: "is Dog", hourly_rate: 60)
