# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create([ { email: 'admin@this.org', 
	name: 'Admin', 
	password: 'hi', 
	admin: true, 
	member: false, 
	donor: false, 
	volunteer: false,} ])

member = User.create([ { email: 'member@this.org', 
	name: 'Member', 
	password: 'hi', 
	admin: false, 
	member: true, 
	donor: false, 
	volunteer: false,} ])