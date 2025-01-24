@archive msg13
@size 44

script 0 mmz2 {
	mugshotShow
		mugshot = 70
	"""
	We are ready to
	open fire, sir.
	"""
	end
}
script 1 mmz2 {
	mugshotShow
		mugshot = 60
	msgBottom
	"""
	We're waiting for
	the signal, sir!!
	"""
	end
}
script 2 mmz2 {
	mugshotShow
		mugshot = 4
	msgTop
	"""
	Well... The time
	has come to launch
	a massive attack
	"""
	msgClear
	"""
	against Neo
	Arcadia. Or maybe
	it's best to say
	"""
	msgClear
	"""
	that it is time
	to destroy it
	once and for all.
	"""
	msgClear
	"""
	I'm happy to
	announce that we
	are commencing
	"""
	msgClear
	"""
	this Operation
	Righteous Strike!
	This has been a
	"""
	msgClear
	"""
	team effort, but
	I would especially
	like to thank the
	"""
	msgClear
	"""
	efforts of Zero.
	Now, ladies and
	gentlemen, BEGIN...
	"""
	msgClear
	mugshotShow
		mugshot = 7
	"""
	Wait!
	"""
	end
}
script 4 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	What is it
	Ms. Ciel?
	"""
	msgClear
	mugshotShow
		mugshot = 7
	msgBottom
	"""
	Is this necessary?
	Do we really have
	to do this?
	"""
	msgClear
	"""
	If we conduct an
	all-out attack,
	the casualties
	"""
	msgClear
	"""
	will be so high...
	"""
	end
}
script 5 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	I'M afraid that's
	the price we must
	pay for our future.
	"""
	msgClear
	"""
	It's sad...
	"""
	end
}
script 6 mmz2 {
	mugshotShow
		mugshot = 41
	msgBottom
	"""
	Ciel's research
	will be completed
	soon... Once the
	"""
	msgClear
	"""
	substitute energy
	has been developed,
	Neo Arcadia loses
	"""
	msgClear
	"""
	its reason to
	crackdown on us...
	Will you give us a
	"""
	msgClear
	"""
	little more time?
	"""
	end
}
script 7 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	That...
	Well, that's
	nothing but a sweet
	"""
	msgClear
	"""
	illusion. If a
	substitute energy
	is developed,
	"""
	msgClear
	"""
	and if we give it
	to them for free,
	I don't think
	"""
	msgClear
	"""
	Neo Arcadia will
	show mercy to us...
	"""
	end
}
script 8 mmz2 {
	mugshotShow
		mugshot = 7
	msgBottom
	"""
	B... But...
	"""
	end
}
script 9 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	Silence!
	"""
	msgClear
	"""
	... ... ...
	"""
	end
}
script 10 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	I apologize for my
	orders, Ms. Ciel.
	But you must follow
	"""
	msgClear
	"""
	them. I'm... I'm so
	worried about you
	Reploids...
	"""
	msgClear
	"""
	About Ms. Ciel...
	and about the
	resistance
	"""
	msgClear
	"""
	soldiers... I just
	want what is best
	for YOU ALL!!
	"""
	end
}
script 11 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	All troops...
	"""
	msgClear
	"""
	Open fire...
	"""
	msgClear
	"""
	Engage!
	"""
	msgClear
	mugshotShow
		mugshot = 75
	"""
	All troops.
	"""
	msgClear
	"""
	Open fire now!
	"""
	end
}
script 12 mmz2 {
	mugshotShow
		mugshot = 60
	msgBottom
	"""
	Roger!
	"""
	end
}
script 13 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	I'm going to the
	front line to give
	commands.
	"""
	msgClear
	"""
	Transfer me.
	"""
	end
}
script 14 mmz2 {
	mugshotShow
		mugshot = 75
	"""
	Preparing to
	transfer.
	"""
	end
}
script 15 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	Don't worry.
	We can work this
	our later...
	"""
	msgClear
	"""
	And when this is
	all over, I...
	"""
	msgClear
	"""
	I'd like to...
	"""
	msgClear
	mugshotShow
		mugshot = 76
	"""
	Transfer commencing.
	"""
	end
}
script 16 mmz2 {
	mugshotShow
		mugshot = 41
	msgBottom
	"""
	Zero, will you
	follow Commander
	Elpizo?
	"""
	msgClear
	"""
	I've got a very
	bad feeling...
	"""
	msgClear
	msgSub
		subindex = 1
	mugshotShow
		mugshot = 75
	msgTop
	"""
	Zero, please.
	"""
	msgClear
	option
		secondAnswerIndex = 0
	"""
	Will you watch him?
	  YES
	  NO
	"""
	msgClear
	mugshotShow
		mugshot = 75
	"""
	Thank you, Zero.
	"""
	msgGotoSub
		subindex = 2
	msgClear
	msgSub
		subindex = 0
	mugshotShow
		mugshot = 76
	"""
	Zero. You are our
	only hope.
	"""
	msgClear
	option
		secondAnswerIndex = 1
	"""
	Will you help him?
	  YES
	  NO
	"""
	msgClear
	mugshotShow
		mugshot = 76
	"""
	Thank you, Zero.
	"""
	msgClear
	msgSub
		subindex = 2
	mugshotShow
		mugshot = 75
	"""
	Preparing to
	transfer.
	"""
	end
}
script 18 mmz2 {
	mugshotShow
		mugshot = 76
	"""
	Transfer commencing.
	"""
	end
}
script 19 mmz2 {
	mugshotShow
		mugshot = 75
	"""
	Good luck...
	"""
	end
}
script 20 mmz2 {
	mugshotShow
		mugshot = 75
	"""
	We have injured.
	Bring the Emergency
	squad.
	"""
	end
}
script 21 mmz2 {
	mugshotShow
		mugshot = 76
	"""
	Transfer complete.
	"""
	end
}
script 22 mmz2 {
	mugshotShow
		mugshot = 75
	"""
	Stand-by alert.
	The huge enemy
	aircraft is
	"""
	msgClear
	"""
	approaching.
	Estimated time of
	arrival is...
	"""
	msgClear
	"""
	Ten minutes.
	"""
	end
}
script 23 mmz2 {
	mugshotShow
		mugshot = 8
	"""
	I'll take care of
	it. Ready a
	shuttle.
	"""
	msgClear
	mugshotShow
		mugshot = 75
	"""
	Roger.
	Zero is going to
	intercept it.
	"""
	msgClear
	"""
	Prepare an
	aircraft for
	launch.
	"""
	end
}
script 24 mmz2 {
	mugshotShow
		mugshot = 7
	"""
	I'm coming with
	you, Zero!
	"""
	end
}
script 25 mmz2 {
	mugshotShow
		mugshot = 7
	"""
	I heard it is
	carrying a special
	bomb. I don't think
	"""
	msgClear
	"""
	you can just destroy
	it. You must
	neutralize it
	"""
	msgClear
	"""
	before you can
	destroy it.
	"""
	msgClear
	mugshotShow
		mugshot = 8
	"""
	No. It's too
	dangerous.
	"""
	end
}
script 26 mmz2 {
	mugshotShow
		mugshot = 7
	"""
	Zero. You can act
	brave, but you
	shouldn't be
	"""
	msgClear
	"""
	reckless. You
	know we have
	no other choice.
	"""
	msgClear
	mugshotShow
		mugshot = 8
	"""
	... ... ...
	Use a portable
	Trans Server...
	"""
	msgClear
	"""
	I'll let you
	know when.
	"""
	end
}
script 27 mmz2 {
	mugshotShow
		mugshot = 75
	"""
	Zero, Ciel, thanks
	for intercepting
	the aircraft.
	"""
	end
}
script 28 mmz2 {
	mugshotShow
		mugshot = 6
	msgBottom
	"""
	Where's Commander
	Elpizo?
	"""
	msgClear
	mugshotShow
		mugshot = 75
	msgTop
	"""
	Commander Elpizo
	has assigned Ciel
	as the acting
	"""
	msgClear
	"""
	commander and
	took to the field.
	"""
	end
}
script 29 mmz2 {
	mugshotShow
		mugshot = 76
	"""
	His current location
	is unknown... I will
	play the message he
	"""
	msgClear
	"""
	left behind. Listen.
	"""
	end
}
script 30 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	Ms. Ciel...
	Our operation has
	failed... You can
	"""
	msgClear
	"""
	blame my
	foolishness.
	"""
	msgClear
	"""
	Ha ha... I'm such
	a fool...
	"""
	msgClear
	"""
	I was an errand
	boy in Neo Arcadia.
	When I came here,
	"""
	msgClear
	"""
	they assigned me as
	a commander, and I
	failed everyone.
	"""
	msgClear
	"""
	I was such a fool...
	"""
	msgClear
	"""
	This is all
	because... I
	didn't have the
	"""
	msgClear
	"""
	power...
	"""
	end
}
script 31 mmz2 {
	mugshotShow
		mugshot = 4
	msgBottom
	"""
	I want to be
	strong...
	"""
	msgClear
	"""
	I want to be
	all-powerful...
	"""
	msgClear
	"""
	I want to be the
	most powerful
	Reploid ever...
	"""
	msgClear
	"""
	I'll destroy
	Neo Arcadia...
	And all the humans!
	"""
	msgClear
	"""
	Then... I'll be
	a true HERO!
	"""
	end
}
script 32 mmz2 {
	mugshotShow
		mugshot = 75
	msgTop
	"""
	We may be able
	to track down the
	history of the
	"""
	msgClear
	"""
	Trans Server that
	Elpizo used...
	Here they are...
	"""
	msgClear
	mugshotShow
		mugshot = 76
	"""
	The Commander must
	be in one of these
	locations. Will you
	"""
	msgClear
	"""
	follow, locate and
	bring the Commander
	back?
	"""
	msgClear
	mugshotShow
		mugshot = 6
	msgBottom
	"""
	We must...
	"""
	msgClear
	"""
	We must help
	Elpizo...
	"""
	end
}
script 33 mmz2 {
	mugshotShow
		mugshot = 72
	"""
	Hee hee hee hee.
	"""
	end
}
script 34 mmz2 {
	mugshotShow
		mugshot = 72
	"""
	You couldn't stop
	me, Mr. Zero.
	"""
	msgClear
	mugshotShow
		mugshot = 75
	"""
	Transmission through
	a secret line.
	According to the
	"""
	msgClear
	"""
	ID signal... It's
	Commander Elpizo!
	"""
	msgClear
	mugshotShow
		mugshot = 6
	"""
	Switch it to the
	main monitor!
	"""
	end
}
script 35 mmz2 {
	mugshotShow
		mugshot = 4
	msgBottom
	"""
	Guess where I am,
	Mr. Zero.
	"""
	msgClear
	"""
	Surprise,
	surprise... I'm
	in the deepest core
	"""
	msgClear
	"""
	of Neo Arcadia...
	I'm in the room
	where the Dark Elf
	"""
	msgClear
	"""
	is resting. This
	is where even the
	high executives are
	"""
	msgClear
	"""
	prohibited to enter.
	Hee hee hee.
	"""
	msgClear
	"""
	First, I'll awaken
	the Dark Elf...
	"""
	msgClear
	"""
	Next, I'll destroy
	the Original X...
	"""
	msgClear
	"""
	Then I will be able
	to obtain the true
	power of the Dark
	"""
	msgClear
	"""
	Elf...
	"""
	msgClear
	"""
	Hee hee hee...
	I'm going...
	"""
	msgClear
	"""
	I'm going to gain
	the ULTIMATE POWER!
	"""
	end
}
script 37 mmz2 {
	mugshotShow
		mugshot = 4
	"""
	Um?
	"""
	msgClear
	"""
	It's you... X...
	"""
	msgClear
	"""
	I'm not afraid of
	you. You can't move
	while you are
	"""
	msgClear
	"""
	sealing the 
	Dark Elf. You'd
	better take care
	"""
	msgClear
	"""
	of the Baby Elves...
	"""
	msgClear
	"""
	... What?
	"""
	msgClear
	"""
	What are you doing?
	No... Stop it...!
	"""
	msgClear
	"""
	Don't bother me, X!!
	"""
	msgClear
	mugshotShow
		mugshot = 58
	"""
	Meeeeee!
	"""
	msgClear
	mugshotShow
		mugshot = 4
	"""
	Hey, don't go,
	Baby Elf!!
	"""
	msgClear
	"""
	I won't...
	Give in...!
	"""
	msgClear
	"""
	Arghhhhh!
	"""
	end
}
script 38 mmz2 {
	mugshotShow
		mugshot = 6
	"""
	What just happened
	to him...?
	"""
	end
}
script 39 mmz2 {
	mugshotShow
		mugshot = 6
	"""
	What was that?
	"""
	end
}
script 40 mmz2 {
	mugshotShow
		mugshot = 85
	"""
	At last he has made
	his way to the
	sacred vault
	"""
	msgClear
	"""
	of Neo Arcadia...
	"""
	msgClear
	"""
	Worse, he has
	damaged the seal
	of her.
	"""
	msgClear
	mugshotShow
		mugshot = 8
	"""
	The Dark Elf...
	"""
	msgClear
	mugshotShow
		mugshot = 85
	"""
	I'm sorry...
	"""
	msgClear
	"""
	My voice couldn't
	seem to draw off his
	attention...
	"""
	msgClear
	"""
	But she...
	"""
	msgClear
	"""
	... They call her a
	Dark Elf. She is not
	fully awake yet...
	"""
	msgClear
	"""
	With my remaining
	power, I'm still
	tying not wake her
	"""
	msgClear
	"""
	up...
	"""
	msgClear
	"""
	Please, Zero... Come
	to Neo Arcadia...
	"""
	msgClear
	"""
	And please stop
	him... Zero...
	"""
	end
}
script 41 mmz2 {
	mugshotShow
		mugshot = 9
	"""
	Ciel.
	Trans me now.
	"""
	msgClear
	mugshotShow
		mugshot = 6
	"""
	We can't transfer
	you directly to the
	"""
	msgClear
	"""
	core of Neo
	Arcadia...
	"""
	msgClear
	"""
	... ... ...
	"""
	msgClear
	"""
	But if you go, we
	can transfer you to
	somewhere around
	"""
	msgClear
	"""
	the main entrance...
	Though it's very
	dangerous...
	"""
	msgClear
	"""
	But... Zero!
	"""
	msgClear
	mugshotShow
		mugshot = 9
	"""
	Don't worry...
	I'm sure... I can
	work it out.
	"""
	end
}
script 43 mmz2 {
	mugshotShow
		mugshot = 6
	"""
	Zero... ... ...
	"""
	end
}
