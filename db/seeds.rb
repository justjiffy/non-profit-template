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

post = Post.create([ { user_id: 1,
    title: 'We are preparing to launch!',
    body: 'This is going to be the coolest and most useful non-profit template site event built. I am so excited to be sharing this with the world! Please check back soon for more updates. 

	Oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead. Cum horribilem walking dead resurgere de crazed sepulcris creaturis, zombie sicut de grave feeding iride et serpens. Pestilentia, shaun ofthe dead scythe animated corpses ipsa screams. Pestilentia est plague haec decaying ambulabat mortuos. Sicut zeder apathetic malus voodoo. Aenean a dolor plan et terror soulless vulnerum contagium accedunt, mortui iam vivam unlife. Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi braindead odores kill and infect, aere implent left four dead.

    Thanks!!!',
    tags: 'first, only',
   	img: 'http://lorempixel.com/400/200/'} ])


