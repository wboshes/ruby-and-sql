# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company

apple = Company.find_by({"name" => "Apple"})
new_contact = Contact.new
new_contact["first_name"] = "Tim"
new_contact["last_name"] = "Cook"
new_contact["email"] = "tim@apple.com"
new_contact["company_id"] = apple["id"]
new_contact.save

new_contact = Contact.new
new_contact["first_name"] = "Craig"
new_contact["last_name"] = "Federighi"
new_contact["email"] = "craig@apple.com"
new_contact["company_id"] = apple["id"]
new_contact.save

# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"company_id" => apple["id"]})
puts "Contacts at Apple: #{apple_contacts.count}"

# 3. 

for contact in apple_contacts
    first_name = contact["first_name"]
    last_name = contact["last_name"]
    puts "#{first_name} #{last_name}"
end