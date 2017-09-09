#Sales Lead Generator

#require gems

require 'sqlite3'
require 'faker'

#create SQLite3 database

db = SQLite3::Database.new("companies.db")
db.results_as_hash = true

#create tables

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS companies (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    number INT
  )
SQL

db.execute(create_table_cmd)


#add a test company
#add a test number
	#retrieve its phone number

#add lots of companies
#add lots of numbers

#create user interface to prompt user for company name
	#iterate through hash to retrieve number
