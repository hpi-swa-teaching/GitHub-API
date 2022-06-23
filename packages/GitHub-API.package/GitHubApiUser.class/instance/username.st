accessing
username

	self isUsernameSet ifFalse: [self setUsername].
	
	username isEmpty ifTrue: [self error: 'No username specified!'].
	
	^ username