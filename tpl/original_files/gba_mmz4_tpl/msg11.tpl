@archive msg11
@size 4

script 0 mmz4 {
	mugshotShow
		mugshot = 4
	"""
	So this is the
	inside of the
	Teleporter Circuit?
	"""
	msgClear
	"""
	It looks a lot like
	Cyberspace.
	"""
	msgClear
	mugshotShow
		mugshot = 36
	"""
	Operator:
	"Zero! Come in!"
	"""
	msgClear
	"""
	"The circuit leads
	 to Ragnarok."
	"""
	msgClear
	"""
	"It looks like the
	 enemy is there
	 too."
	"""
	msgClear
	"""
	"Destroy the
	 protection program
	 up ahead."
	"""
	end
}
script 2 mmz4 {
	mugshotShow
		mugshot = 4
	"""
	This is the
	protection program?
	"""
	msgClear
	mugshotShow
		mugshot = 38
	"""
	Beep... Beep...
	Circuit intrusion
	detected...
	"""
	msgClear
	"""
	Protection
	activated...
	"""
	msgClear
	"""
	Eliminating
	intruder...
	"""
	end
}
script 3 mmz4 {
	mugshotShow
		mugshot = 0
	"""
	Operator:"Protection has
	"""
	msgClear
	"""
	 been disabled..."
	"""
	msgClear
	"""
	"You can head to Ragnarok
	"""
	msgClear
	"""
	 any time now!"
	"""
	msgClear
	"""
	"Zero, hurry back."
	"""
	end
}
