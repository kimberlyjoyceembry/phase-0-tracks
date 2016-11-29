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

def new_password(database, account, email_or_username, password)
	database.execute("INSERT INTO passwords (account, email_or_username, password) VALUES (?, ?, ?)", [account, email_or_username, password])
	puts "Password stored!"
end

def update_password(database, value, account_name)
	database.execute("UPDATE passwords SET password=? WHERE account=?", [value, account_name])
	puts "Password updated!"
end

def post_password(database, account_name)
	p database.execute("SELECT password FROM passwords WHERE account=?", [account_name])
end

def post_database(database)
	p database.execute("SELECT account, email_or_username, password FROM passwords")
end