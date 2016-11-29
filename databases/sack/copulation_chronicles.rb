=begin pseudocode
COPULATION CHRONICLES
Journal personal relations containing vital information
	Abilities:
		1. Create data: store as individual entries
		2. Retrieve data: searchability by tags, keywords, or dates
	Databases
		1. Create table for storing chronicles
		2. Create table for tags
	User Interface
		Ask user if is creating new entry or searching
			1. Create a new row if adding entry
				- Make sure each column is populated with data
			2. Let user search through entries
				- Search by tags
				- Search by keywords and dates
				- Print onto console the desired entries
			3. Continue loop until user enters exit
=end

require 'sqlite3'