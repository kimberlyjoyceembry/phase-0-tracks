# STORE PASSWORDS
# Let user store passwords according to accounts
# 	Abilities:
# 		1. Store passwords
# 		2. Search by account_name
# 	Databases:
# 		1. Create table for passwords
# 	User Interface:
# 		1. Ask user if creating new entry or updating password
# 		2. If creating new entry 
# 			- Create a new row if adding new entry
# 			- Make sure each column is populated with data
# 		3. If updating password
# 			- Ask for which account_name
# 			- Let user change password
# 			- Print updated entry
# 		4. Let user search through database for password
# 			- Search by account_name and print row
# 		4. Loop through until user enters "exit"	

# require gems
require 'sqlite3'

# create SQLite3 database
database = SQLite3::Database.new("passwords.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS passwords(
	id INTEGER PRIMARY KEY,
	account VARCHAR(255),
	email_or_username VARCHAR(255),
	password VARCHAR(255)
	)
SQL

# create a passwords table (if it's not there already)
database.execute(create_table_cmd)

# METHODS
# def new_password(database, account, email_or_username, password)
# 	database.execute("INSERT INTO passwords (account, email_or_username, password) VALUES (?, ?, ?)", [account, email_or_username, password])
# 	puts "Password stored!"
# end

# def update_password(database, value, account)
# 	database.execute("UPDATE passwords SET password=? WHERE account=?", [value, account])
# 	puts "Password updated!"
# end

# def post_password(database, account)
# 	p database.execute("SELECT password FROM passwords WHERE account=?", [account])
# end

# def post_database(database)
# 	database.execute("SELECT * FROM passwords")
# end

# USER INTERFACE
puts "Hi there! Here are your options:"
loop do 
	puts "Things to do:"
	puts "- To store a password enter '1'."
	puts "- To update an existing password enter '2'."
	puts "- To look up a password enter '3'."
	puts "- To access your database enter '4'."
	puts "- Or to exit type 'exit'."
	action = gets.chomp

	break if action == "exit"
		if action == "1"
			puts "What is the account name? (i.e. Gmail, Youtube, Facebook)"
			account = gets.chomp
			puts "What is the email or username for your #{account} account?"
			email_or_username = gets.chomp
			puts "What is the password for your #{account} account?"
			password = gets.chomp
			puts "Password stored!"
			database.execute("INSERT INTO passwords (account, email_or_username, password) VALUES (?, ?, ?)", [account, email_or_username, password])
			# new_password(database, account, email_or_username, password)

		elsif action == "2"
			puts "What is the account name of the password you would like to update?"
			account_list = database.execute("SELECT account FROM passwords")
			account_list.each do |account|
				puts "#{account}"
			end
			account = gets.chomp
			puts "What is the new password for your #{account} account?"
			password = gets.chomp
			puts "Your new password is '#{password}'."
			database.execute("UPDATE passwords SET password=? WHERE account=?", [password, account])
			# update_password(database, update_account, new_password)

		elsif action == "3"
			puts "What is the account name of the password you would like to search for?"
			# puts "Your stored accounts:"
			account_list = database.execute("SELECT account FROM passwords")
			account_list.each do |account|
				puts "#{account}"
			end
			account = gets.chomp
			password_product = database.execute("SELECT password FROM passwords WHERE account=?", [account])
			puts "The password is #{password_product}."

		elsif action == "4"
			puts "Here is a list of your accounts and their passwords:"
			password_list = database.execute("SELECT account, email_or_username, password FROM passwords")
			password_list.each do |account, email_or_username, password|
				puts "#{account}: #{email_or_username} - #{password}"
			end

		else
			puts "Say what??? I need a number option buddy!"
		end
end

puts "Your secrets are safe with me!"