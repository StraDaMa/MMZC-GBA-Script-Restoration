@archive msg00
@size 71

script 0 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Choose an option.
	  BEGIN MISSION
	  PROCESS DATA
	  TALK
	"""
	end
}
script 1 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Which mission?
	"""
	end
}
script 2 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Will you accept?
	
	  YES
	  NO
	"""
	end
}
script 3 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	What's now?
	  SAVE DATA
	  LOAD DATA
	  ERASE DATA
	"""
	end
}
script 4 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	To which file?
	"""
	end
}
script 5 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	
	OK to overwrite?
	  YES
	  NO
	"""
	end
}
script 6 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Which data?
	"""
	end
}
script 7 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	
	Okay to load?
	  YES
	  NO
	"""
	end
}
script 8 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Which data?
	"""
	end
}
script 9 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	
	Okay to erase?
	  YES
	  NO
	"""
	end
}
script 10 mmz1 {
	mugshotShow
		mugshot = 2
	"""
	  CHANGE AREA
	  DOWNLOAD ELF
	  FEED ELF
	  EXIT
	"""
	end
}
script 11 mmz1 {
	mugshotShow
		mugshot = 2
	"""
	  RETURN TO BASE
	  DOWNLOAD ELF
	  FEED ELF
	  EXIT
	"""
	end
}
script 12 mmz1 {
	mugshotShow
		mugshot = 2
	"""
	  ABORT MISSION
	  DOWNLOAD ELF
	  FEED ELF
	  EXIT
	"""
	end
}
script 13 mmz1 {
	mugshotShow
		mugshot = 7
	"""
	Welcome to our
	Resistance Base,
	Zero.
	"""
	msgClear
	"""
	This is a shelter
	for injured
	Reploids who
	are suspected
	"""
	msgClear
	"""
	of being
	Mavericks.
	"""
	msgClear
	"""
	We have fought
	so hard to
	survive...
	"""
	msgClear
	"""
	However, we know
	that the end is
	coming...
	"""
	msgClear
	"""
	But that's why
	we have been
	looking for you.
	You are our
	"""
	msgClear
	"""
	last hope. Most
	of us think that
	Zero is nothing
	but a fantasy.
	"""
	msgClear
	"""
	However, a few
	still believed
	in your
	existence and
	"""
	msgClear
	"""
	have looked
	for you...
	"""
	msgClear
	"""
	You ARE Zero,
	the legendary
	Reploid who
	fought with
	"""
	msgClear
	"""
	X to save the
	world 100 years
	ago.
	"""
	msgClear
	mugshotShow
		mugshot = 4
	"""
	X...? That name
	sounds familiar.
	"""
	msgClear
	mugshotShow
		mugshot = 7
	"""
	X...
	That legendary
	Reploid is
	still alive and
	"""
	msgClear
	"""
	he's trying to
	retire all of us.
	"""
	msgClear
	mugshotShow
		mugshot = 4
	"""
	X is trying
	to... retire
	you...?
	"""
	msgClear
	mugshotShow
		mugshot = 7
	"""
	His plans have
	already begun.
	Many innocent
	Reploids are
	"""
	msgClear
	"""
	being retired
	as we speak...
	"""
	msgClear
	"""
	We need your
	help. Our future
	depends on
	you...
	"""
	msgClear
	option
		secondAnswerIndex = 1
	"""
	Please help
	us...
	  OK
	  NO WAY
	"""
	msgClear
	"""
	Thank you...
	It's like a
	dream come true.
	"""
	msgClear
	"""
	Now... With
	your help...
	"""
	msgClear
	"""
	I think I can
	save everyone.
	I have something
	I need to ask
	"""
	msgClear
	"""
	you. Please talk
	to me, when you
	are ready.
	"""
	msgSubEnd
	msgSub
		subindex = 1
	"""
	I understand...
	You need time
	to think about
	it.
	"""
	msgClear
	"""
	Okay then, we'll
	find a way to
	work it out by
	ourselves.
	"""
	msgClear
	"""
	Still, if you
	change your
	mind... please
	talk to me...
	"""
	msgClear
	"""
	Okay?
	"""
	end
}
script 14 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Are you ready...?
	Now, listen.
	"""
	msgClear
	"""
	What I want to
	ask you is if
	you would try
	and do something
	"""
	msgClear
	"""
	that no one has
	been able to do
	so far...
	"""
	msgClear
	"""
	I want you to
	destroy the
	Disposal Center,
	where they
	"""
	msgClear
	"""
	retire our
	comrades one
	after another...
	"""
	msgClear
	"""
	Even while I
	speak, they may
	be retiring a
	Reploid who is
	"""
	msgClear
	"""
	wrongly suspected
	of being a
	Maverick.
	"""
	msgClear
	"""
	To prevent any
	additional loss
	of Reploid
	life, please
	"""
	msgClear
	"""
	destroy the
	enemy facility...
	"""
	end
}
script 15 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	...?
	"""
	msgClear
	"""
	Will you...
	help us?
	"""
	msgClear
	"""
	Thank you...
	It's like a
	dream come true.
	"""
	msgClear
	"""
	Now... With your
	help, I think I
	can save
	everyone.
	"""
	msgClear
	"""
	What I want to
	ask you is if
	you would try
	and do something
	"""
	msgClear
	"""
	that no one has
	been able to do
	so far...
	"""
	msgClear
	"""
	I want you to
	destroy the
	Disposal Center,
	where they
	"""
	msgClear
	"""
	retire our
	comrades one
	after another...
	"""
	msgClear
	"""
	Even while I
	speak, they may
	be retiring a
	Reploid who is
	"""
	msgClear
	"""
	wrongly suspected
	of being a
	Maverick.
	"""
	msgClear
	"""
	To prevent any
	additional loss
	of Reploid
	life, please
	"""
	msgClear
	"""
	destroy the
	enemy facility...
	"""
	end
}
script 16 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Please, help
	us, Zero...
	"""
	end
}
script 17 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Do you remember
	the place in
	which we met?
	"""
	msgClear
	"""
	We had no choice
	but to escape
	then, but my
	research tells me
	"""
	msgClear
	"""
	that there
	remains some very
	important
	information for
	"""
	msgClear
	"""
	you there.
	"""
	msgClear
	"""
	The enemies must
	be trying to
	obtain it
	before you do...
	"""
	msgClear
	"""
	Go and retrieve
	it before it's
	too late...
	"""
	end
}
script 18 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	One of our
	Comrade Reploids
	is being held in
	the Disposal
	"""
	msgClear
	"""
	Center. Please
	save him.
	"""
	end
}
script 19 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Everyone! Guard
	the front of our
	base at all
	costs!
	"""
	msgClear
	"""
	Zero!
	Go around and
	attack it from
	the rear...
	"""
	msgClear
	"""
	That should buy
	us some time...
	"""
	msgClear
	"""
	You are our only
	hope... Good
	luck, Zero.
	"""
	end
}
script 20 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	We want to
	destroy the
	enemy transport
	train in order
	"""
	msgClear
	"""
	to disrupt their
	supply.
	"""
	msgClear
	"""
	Based on the
	report from our
	scout unit...
	"""
	msgClear
	"""
	The enemy train
	is at the old
	platform
	loading cargo...
	"""
	msgClear
	"""
	The time to
	attack is now.
	"""
	msgClear
	"""
	Please help us
	destroy that
	train.
	"""
	end
}
script 21 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	One of our
	comrades named
	Colbor said he
	was very sorry
	"""
	msgClear
	"""
	that we couldn't
	help but rely on
	you.
	"""
	msgClear
	"""
	He seems to have
	found a way into
	their base
	through the
	"""
	msgClear
	"""
	subway area, but
	we have lost
	contact with the
	Colbor team...
	"""
	msgClear
	"""
	I just hope that
	he is alright...
	"""
	msgClear
	"""
	If you don't
	mind, will you
	go and look for
	him?
	"""
	end
}
script 22 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Unfortunately,
	our stock of
	energy is
	running out...
	"""
	msgClear
	"""
	If we could use
	the abandoned
	factory, we
	could generate
	"""
	msgClear
	"""
	the energy...
	But the boss
	guarding the
	factory is too
	"""
	msgClear
	"""
	strong for us
	to gain control
	of it...
	"""
	msgClear
	"""
	Will you destroy
	the boss for us?
	"""
	end
}
script 23 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Thanks to you,
	we've gained
	control of the
	factory. But I
	"""
	msgClear
	"""
	don't think we
	can hold it
	forever...
	"""
	msgClear
	"""
	Can you go
	and check on
	the factory
	for me?
	"""
	end
}
script 24 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Some of the
	abducted Reploids
	seem to have
	hijacked an enemy
	"""
	msgClear
	"""
	transport plane
	and have now
	escaped.
	"""
	msgClear
	"""
	But the plane
	disappeared over
	the desert...
	"""
	msgClear
	"""
	They might have
	crash-landed
	in the desert,
	and so we sent
	"""
	msgClear
	"""
	our scouts to
	look for them...
	"""
	msgClear
	"""
	However, our
	scouts are
	having
	difficulties
	"""
	msgClear
	"""
	due to the
	hordes of
	hostile
	enemies in
	"""
	msgClear
	"""
	the area...
	"""
	msgClear
	"""
	I'm sorry, but
	will you go and
	help their
	rescue?
	"""
	end
}
script 25 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	We've got a
	report that
	enemies are
	assembling in
	"""
	msgClear
	"""
	the desert area.
	"""
	msgClear
	"""
	They haven't
	started their
	attack yet, but
	a large scale
	"""
	msgClear
	"""
	assault can be
	expected.
	"""
	msgClear
	"""
	Even though our
	comrades built
	barricades and
	are taking
	"""
	msgClear
	"""
	precautions
	against their
	attack, I am
	still worried.
	"""
	msgClear
	"""
	If you don't
	mind, will you
	go and help
	them?
	"""
	end
}
script 26 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	We have received
	information that
	there is a
	hidden base of
	"""
	msgClear
	"""
	the enemy
	somewhere in
	the desert, and
	that they are
	"""
	msgClear
	"""
	holding
	Reploids in it...
	"""
	msgClear
	"""
	We have been
	trying to locate
	it, but...
	"""
	msgClear
	"""
	If there is a
	hidden base, and
	if Reploids are
	being held there,
	"""
	msgClear
	"""
	we must save
	them as soon as
	possible...
	"""
	msgClear
	"""
	Will you find
	where the hidden
	base is? They
	must be
	"""
	msgClear
	"""
	somewhere in
	the desert...!
	"""
	end
}
script 27 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	The main server
	of the
	Resistance Base
	has recently
	"""
	msgClear
	"""
	become the
	target of
	several
	malicious
	"""
	msgClear
	"""
	hack jobs.
	"""
	msgClear
	"""
	We know that
	the hackers are
	in a hidden
	base located
	"""
	msgClear
	"""
	beneath the
	desert.
	"""
	msgClear
	"""
	If we don't do
	something about
	it soon,we
	will have many
	"""
	msgClear
	"""
	problems with
	the generation
	project of the
	new energy.
	"""
	msgClear
	"""
	Zero, will you
	sneak into their
	hidden base and
	destroy their
	"""
	msgClear
	"""
	main computer?
	"""
	end
}
script 28 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	ゼロ 聞こえる? ゼロ
	しきゅう、もどって来て!
	‥ベ‥が‥‥ベース‥おそわ‥るの!
	"""
	msgClear
	"""
	‥ゼ‥‥‥‥ゼロ
	
	"""
	end
}
script 29 mmz1 {
	mugshotShow
		mugshot = 6
	textColorRed
	"""
	トランスルーム
	"""
	textColorWhite
	"""
	から
	"""
	textColorRed
	"""
	都市
	"""
	textColorWhite
	"""
	に
	行くためには
	"""
	textColorRed
	"""
	プロテクト
	"""
	textColorWhite
	"""
	を
	かいじょしないとダメなの‥
	"""
	msgClear
	"""
	でも、まだそのパスワードは
	かいせきできていないの
	"""
	end
}
script 30 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero...
	You must
	survive...
	"""
	msgClear
	"""
	I'll wait for you
	here until the
	day you return...
	"""
	msgClear
	"""
	Promise me
	that you will
	come back
	alive...
	"""
	end
}
script 31 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	I'm happy that
	I could meet
	you...
	"""
	msgClear
	"""
	If it were not
	for you, everyone
	would be gone by
	now...
	"""
	msgClear
	"""
	......
	"""
	msgClear
	"""
	Promise me that
	you will come
	back alive.
	"""
	msgClear
	"""
	Even if you
	cannot destroy
	Neo Arcadia, I
	just want you
	"""
	msgClear
	"""
	to be able to
	return safely.
	"""
	msgClear
	"""
	Good luck...
	"""
	end
}
script 32 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	We have analyzed
	the data you
	retrieved...
	"""
	msgClear
	"""
	But, most of
	the data is
	damaged and
	is useless...
	"""
	msgClear
	"""
	The good news
	is that we can
	restore the
	information on
	"""
	msgClear
	"""
	your weapon.
	"""
	msgClear
	"""
	If you want to
	know about it,
	ask our engineer
	named Cerveau.
	"""
	msgClear
	"""
	I'm sorry that
	the mission
	ended poorly,
	but we hope you
	"""
	msgClear
	"""
	will continue to
	help us.
	"""
	end
}
script 33 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	The data seems
	to have been
	carried away.
	"""
	msgClear
	"""
	But don't
	worry...
	"""
	msgClear
	"""
	I'll try to
	hack into the
	enemy base to
	keep them from
	"""
	msgClear
	"""
	using it.
	"""
	end
}
script 34 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero...
	Thank you.
	I never thought
	I'd see the day
	"""
	msgClear
	"""
	when the Reploid
	Disposal Center
	was destroyed.
	"""
	msgClear
	"""
	Innocent Reploids
	will be safe for
	a while...
	"""
	msgClear
	"""
	Thank you so
	much, Zero.
	"""
	msgClear
	"""
	You ARE Zero,
	the legendary
	Reploid...
	"""
	msgClear
	"""
	I'd like to ask
	your help again
	when you have
	time.
	"""
	msgClear
	"""
	That is, if you
	don't mind doing
	us favors...
	"""
	msgClear
	"""
	Please come
	and talk to
	me...
	"""
	msgClear
	"""
	I'll be waiting
	for you...
	"""
	msgClear
	"""
	By the way, if
	you go to the
	engine room
	downstairs,
	"""
	msgClear
	"""
	you'll find our
	engineer named
	Cerveau. He asked
	me to give this
	"""
	msgClear
	"""
	to you.
	"""
	msgClear
	"""
	It's called the
	Escape Unit. If
	you use it
	during a
	"""
	msgClear
	"""
	mission, you
	will be able to
	abort that
	mission and
	"""
	msgClear
	"""
	evacuate.
	"""
	msgClear
	"""
	But remember,
	the mission will
	be considered to
	be a failure if
	"""
	msgClear
	"""
	you evacuate it.
	"""
	end
}
script 35 mmz1 {
	"""
	エラー
	"""
	end
}
script 36 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero...
	Thank you.
	I never thought
	I'd see the day
	"""
	msgClear
	"""
	when the Reploid
	Disposal Center
	is destroyed.
	"""
	msgClear
	"""
	Innocent Reploids
	will be safe for
	a while...
	"""
	msgClear
	"""
	Thank you so
	much, Zero.
	"""
	msgClear
	"""
	You ARE Zero,
	the legendary
	Reploid...
	"""
	end
}
script 37 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	If you didn't
	stop the Giant
	Mechaniloid, the
	Resistance Base
	"""
	msgClear
	"""
	would have
	become a sitting
	duck.
	"""
	msgClear
	"""
	Thank you, Zero.
	"""
	msgClear
	"""
	With your
	cooperation,
	maybe peace will
	be restored...
	"""
	end
}
script 38 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Our shield
	generator has
	been severely
	damaged by that
	"""
	msgClear
	"""
	giant
	Mechaniloid...
	"""
	msgClear
	"""
	If they attack
	the Resistance
	Base, it will be
	easily
	"""
	msgClear
	"""
	penetrated. We
	have to fix the
	generator as
	soon as
	"""
	msgClear
	"""
	possible...
	"""
	end
}
script 39 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Thanks to you,
	the abducted
	Cyber-elf has
	been saved!
	"""
	msgClear
	"""
	And the enemies'
	supply route has
	been cut off...
	"""
	msgClear
	"""
	Thank you very
	much, Zero. We
	owe all of this
	to you.
	"""
	msgClear
	"""
	The Cyber-elf
	you rescued is
	only a child.
	"""
	msgClear
	"""
	But she is a
	unique Cyber-elf
	and will learn
	an awesome
	"""
	msgClear
	"""
	ability, when
	she grows up.
	"""
	msgClear
	"""
	Raise her with
	love and care...
	"""
	end
}
script 40 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero... Don't
	worry. It's
	not your fault.
	Thanks, anyway.
	"""
	end
}
script 41 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Thanks to you,
	our comrade,
	Colbor was
	rescued.
	"""
	msgClear
	"""
	Thank you so
	much...
	"""
	msgClear
	"""
	He sometimes
	makes mistakes,
	but he is a
	good Reploid at
	"""
	msgClear
	"""
	heart. Please
	forgive him.
	"""
	end
}
script 42 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Despite your
	effort, Colbor
	didn't make it
	back.
	"""
	msgClear
	"""
	I feel bad for
	him,but what's
	done is done...
	"""
	end
}
script 43 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Thanks to you,we
	have gained
	control of the
	factory. Now we
	"""
	msgClear
	"""
	can live without
	the fear of
	retirement.
	"""
	msgClear
	"""
	Thank you very
	much.
	"""
	msgClear
	"""
	It's like our
	dream has come
	true.
	"""
	msgClear
	"""
	We feared that
	we were doomed...
	"""
	end
}
script 44 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero, thank you
	for your effort.
	"""
	msgClear
	"""
	We have some
	Energy Crystals
	in stock...
	"""
	msgClear
	"""
	All we have to
	do is to develop
	a substitute
	energy before
	"""
	msgClear
	"""
	our stock of
	the Energy
	Crystals run out.
	"""
	msgClear
	"""
	I'll go for it!
	"""
	end
}
script 45 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero, I'm sorry
	that we are
	always risking
	your life...
	"""
	msgClear
	"""
	How long do we
	have to live
	like this,
	anyway...?
	"""
	msgClear
	"""
	I'm sorry, I'm
	kind of
	depressed...
	"""
	msgClear
	"""
	I'll do my best
	to develop a
	substitute
	energy.
	"""
	msgClear
	"""
	If we can obtain
	a substitute
	energy, we could
	live happily in
	"""
	msgClear
	"""
	a quiet place...
	"""
	msgClear
	"""
	Until that
	happens, I hope
	to have your
	continued
	"""
	msgClear
	"""
	support, Zero.
	"""
	end
}
script 46 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	While the factory
	was destroyed,
	I'm glad that
	you are safe.
	"""
	msgClear
	"""
	I was so worried
	about you...
	Really...
	"""
	msgClear
	"""
	Please... Do not
	push yourself too
	hard from now
	on...
	"""
	msgClear
	"""
	Keep in mind that
	we are all
	worried about
	you, Zero.
	"""
	end
}
script 47 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Another comrade
	has been saved,
	thanks to you.
	"""
	msgClear
	"""
	According to his
	report, enemies
	are planning to
	conduct a large
	"""
	msgClear
	"""
	scale attack on
	the Resistance
	Base.
	"""
	msgClear
	"""
	If that happens,
	we will need
	your help
	again...
	"""
	msgClear
	"""
	We appreciate
	your continued
	support, Zero.
	"""
	end
}
script 48 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	I'm sorry that
	we asked you
	to be a part of
	this difficult
	"""
	msgClear
	"""
	mission.
	"""
	msgClear
	"""
	We appreciate
	your effort,
	regardless of
	the result.
	"""
	msgClear
	"""
	I'd like to say
	thank you one
	more time...
	"""
	end
}
script 49 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Thank you, Zero.
	If our defense
	line was broken,
	this Base
	"""
	msgClear
	"""
	wouldn't last
	long...
	"""
	msgClear
	"""
	Still, I can't
	believe you
	wiped out such a
	large number of
	"""
	msgClear
	"""
	enemies...
	"""
	msgClear
	"""
	You are truly a
	legendary hero.
	"""
	end
}
script 50 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Now that our
	defense line is
	broken, this
	base will be an
	"""
	msgClear
	"""
	easy target for
	them.
	"""
	msgClear
	"""
	I'm afraid that
	they may attack
	us at any
	moment!
	"""
	end
}
script 51 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero...
	Thanks to you,
	as many as seven
	Reploids have
	"""
	msgClear
	"""
	been saved...
	We cannot thank
	you enough...
	"""
	msgClear
	"""
	You know what?
	My experiment is
	going fine so
	far...
	"""
	msgClear
	"""
	Once we succeed
	in developing a
	substitute
	energy, we plan
	"""
	msgClear
	"""
	to find a place
	to live a happy
	life.
	"""
	msgClear
	"""
	Somewhere out of
	the reach of our
	enemy, Neo
	Arcadia...
	"""
	msgClear
	"""
	There, we'd like
	to live in
	peace, free from
	the anxiety of
	"""
	msgClear
	"""
	hunger in a warm
	blanket of
	happiness...
	"""
	msgClear
	"""
	If that
	happens...
	"""
	msgClear
	"""
	You are going to
	come with us,
	aren't you, Zero?
	"""
	end
}
script 52 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	The Reploids who
	had been
	confined are...
	"""
	msgClear
	"""
	Everyone is...
	"""
	msgClear
	"""
	......
	"""
	msgClear
	"""
	I guess that it
	couldn't be
	helped. Thank
	you for trying
	"""
	msgClear
	"""
	though...
	"""
	msgClear
	"""
	It was not your
	fault...
	"""
	end
}
script 53 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Attempts to hack
	into our base
	have ceased,
	thanks to you.
	"""
	msgClear
	"""
	I'll do my best
	to achieve my
	mission to
	develop a
	"""
	msgClear
	"""
	substitute
	energy.
	"""
	msgClear
	"""
	The future of
	all the Reploids
	depends on us!
	"""
	end
}
script 54 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	I'm sorry that
	you couldn't
	prevent their
	attempt to hack
	"""
	msgClear
	"""
	into our base...
	"""
	msgClear
	"""
	They have
	penetrated and
	damaged the
	security of our
	"""
	msgClear
	"""
	Trans Server,
	and now some of
	its functions
	are currently
	"""
	msgClear
	"""
	unavailable...
	"""
	msgClear
	"""
	I guess that
	it will take a
	little time to
	restore the
	"""
	msgClear
	"""
	system. I'm
	sorry, Zero.
	"""
	end
}
script 55 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	We are in a
	critical
	situation, Zero.
	"""
	msgClear
	"""
	You are our only
	hope...
	"""
	end
}
script 56 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero...
	Promise me
	that you will
	not try to push
	"""
	msgClear
	"""
	yourself too
	hard...
	"""
	msgClear
	"""
	If something
	happens to you,
	I can't...
	"""
	msgClear
	"""
	Just please
	promise me.
	"""
	end
}
script 57 mmz1 {
	mugshotShow
		mugshot = 4
	"""
	Ciel...
	What made you
	come here...?
	"""
	msgClear
	mugshotShow
		mugshot = 7
	"""
	I... I'm sorry...
	It's...
	"""
	msgClear
	"""
	It was I who
	recreated the
	duplication of
	X...
	"""
	msgClear
	"""
	That's why...
	"""
	msgClear
	mugshotShow
		mugshot = 4
	"""
	You don't have
	to apologize.
	It's not your
	fault.
	"""
	msgClear
	"""
	You did it because
	you thought it
	would be good
	for everyone...
	"""
	msgClear
	"""
	Please just
	leave everything
	to me now.
	"""
	msgClear
	mugshotShow
		mugshot = 7
	"""
	Zero, thank
	you...
	"""
	end
}
script 58 mmz1 {
	mugshotShow
		mugshot = 42
	"""
	A giant enemy
	Mechaniloid is
	approaching our
	base.
	"""
	msgClear
	"""
	If we don't do
	something, it
	will destroy
	our base in
	"""
	msgClear
	"""
	no time!!
	"""
	end
}
script 59 mmz1 {
	mugshotShow
		mugshot = 42
	"""
	CIEL:
	"You're going to
	 your mission?
	 Good luck..."
	"""
	end
}
script 60 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Save data before
	starting mission?
	  YES
	  NO
	"""
	end
}
script 61 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Data saved!
	"""
	end
}
script 62 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Data overwritten!
	"""
	end
}
script 63 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Data erased!
	"""
	end
}
script 66 mmz1 {
	mugshotShow
		mugshot = 2
	"""
	Will you save the
	Game Clear Data?
	  YES
	  NO
	"""
	end
}
script 67 mmz1 {
	"""
	It's locked.
	"""
	end
}
script 68 mmz1 {
	mugshotShow
		mugshot = 2
	"""
	  
	"""
	textColorRed
	"""
	ABORT
	"""
	textColorWhite
	"""
	 
	"""
	textColorRed
	"""
	MISSION
	"""
	textColorWhite
	"""
	
	  DOWNLOAD ELF
	  FEED ELF
	  EXIT
	"""
	end
}
script 69 mmz1 {
	mugshotShow
		mugshot = 6
	"""
	Zero...
	Thank you...
	"""
	end
}
script 70 mmz1 {
	mugshotShow
		mugshot = 7
	"""
	I'm happy that
	I could meet
	you...
	"""
	msgClear
	"""
	If it were not
	for you, everyone
	would be gone by
	now...
	"""
	msgClear
	"""
	......
	"""
	msgClear
	"""
	Promise me that
	you will come
	back alive.
	"""
	msgClear
	"""
	Even if you
	cannot destroy
	Neo Arcadia, I
	just want you
	"""
	msgClear
	"""
	to be able to
	return safely.
	"""
	msgClear
	"""
	Good luck...
	"""
	end
}
