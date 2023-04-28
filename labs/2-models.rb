# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file


# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Brian"
new_salesperson["last_name"] = "Eng"
new_salesperson["email"] = "brian@test.com"
new_salesperson.save
puts "Brian created"

# MISSING


# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople."

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.


brian = Salesperson.find_by({ "email" => "ben@test.com" })
brian["first_name"] = "Brianjamima"
brian.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
