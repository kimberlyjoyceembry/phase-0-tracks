require_relative 'copulation_chronicles'

database = SQLite3::Database.new("chronicles.db")

create_table_cmd <<-SQL
	CREATE TABLE IF NOT EXISTS chronicles(
		id INTEGER PRIMARY KEY, 
		partner_name VARCHAR(255),
		date 
		)