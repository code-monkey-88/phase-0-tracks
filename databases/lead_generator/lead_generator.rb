#Sales Lead Generator

#require gems

require 'sqlite3'
require 'faker'

#create SQLite3 database

db = SQLite3::Database.new("companies.db")
db.results_as_hash = true

#create tables

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS companies(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    number INT
  )
SQL

db.execute(create_table_cmd)

#add a test company

# db.execute("INSERT INTO companies (name, number) VALUES ('coca-cola', 5105414388)")
	#retrieve its phone number

#add lots of companies
#add lots of numbers

def create_leads(db, name, number)
  db.execute("INSERT INTO companies (name, number) VALUES (?, ?)", [name, number])
end

10.times do
   create_leads(db, Faker::Company.name, Faker::PhoneNumber.phone_number)
end

#Print company names to the user
companies = db.execute("SELECT * FROM companies")
companies.each do |company|
  puts "#{company['name']}"
end

#create user interface to prompt user for company name
	#iterate through hash to retrieve number
puts "welcome user! we have generated a list of B2B leads above"
puts "please enter a company name to retrieve their phone number"
company_name = gets.chomp

companies.each do |company|
  if company['name'] == company_name
    puts "the phone number is #{company['number']}"
  end
end
