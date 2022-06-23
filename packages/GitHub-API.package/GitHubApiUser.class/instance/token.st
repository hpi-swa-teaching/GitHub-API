accessing
token
	
	self isTokenSet ifFalse: [self setToken].
	
	token isEmpty ifTrue: [self error: 'No token specified!'].
	
	^ token