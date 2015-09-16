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

volunteer = User.create([ { email: 'volunteer@this.org', 
	name: 'Volunteer', 
	password: 'hi', 
	admin: false, 
	member: false, 
	donor: false, 
	volunteer: true,} ])

donor = User.create([ { email: 'donor@this.org', 
	name: 'Donor', 
	password: 'hi', 
	admin: false, 
	member: false, 
	donor: true, 
	volunteer: false,} ])

bob = User.create([ { email: 'bob@gmail.com', 
	name: 'Bob', 
	password: 'hi', 
	admin: false, 
	member: false, 
	donor: false, 
	volunteer: false,} ])

post = Post.create([ { user_id: 1,
    title: "Aaaaaaaaand.... we're up!",
    body: "This the first and only seeded entry for the website. All other content is user generated. 
    
    I am very excited to preset this.org, an open-source rails template designed for the needs of a small-mid sized non-profit organization. This project is available at a few different locations. 
    
    Please check the about section for links to the repository and other useful items. 
    
    This project was made in the General Assemble WDI - 5 cohort in Downtown Los Angeles by Juli Emmel (September 2015). 
    
    The pictures you are seeing are randomly generated from lorempixel",
    tags: 'first, seed',
   	img: 'http://lorempixel.com/400/200/'} ])



