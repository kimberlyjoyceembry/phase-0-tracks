require_relative 'password_storage'

# create SQLite3 database
database = SQLite3::Database.new("passwords.db")
# database.results_as_hash = true

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

# USER INTERFACE
puts "Hi there!"
loop do 
	puts "To store a password enter '1'. To update an existing password enter '2'. To look up a password enter '3'. To access your database enter '4'. Or to exit type 'exit'."
	action = gets.chomp
	break if action == "exit"
		if action == "1"
			puts "What is the account name? (i.e. Gmail, Youtube, Facebook)"
			account_name = gets.chomp
			puts "What is the email or username for this account?"
			email_or_username = gets.chomp
			puts "What is the password for your #{account_name} account?"
			password = gets.chomp
			new_password(database, account_name, email_or_username, password)
		elsif action == "2"
			puts "What is the account name of the password you would like to update?"
			p database.execute("SELECT passwords.account FROM passwords")
			update_account = gets.chomp
			puts "What is the new password for your #{update_account} account?"
			new_password = gets.chomp
			update_password(database, update_account, new_password)
		elsif action == "3"
			puts "What is the account name of the password you would like to search for?"
			# puts "Your stored accounts:"
			p database.execute("SELECT passwords.account FROM passwords")
			search_password = gets.chomp
			post_password(database, account_name)
		elsif action == "4"
			puts "Here is your password storage database:"
			post_database(database)
		else
			puts "What was that? To store a password, enter '1'. To update an existing password enter '2'. To look up a password enter '3'. Or to exit type 'exit'"
		end
end

puts "Thank you and come again!"