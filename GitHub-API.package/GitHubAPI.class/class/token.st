accessing
token

	self isTokenSet ifFalse: [self setToken].
	
	Token isEmpty ifTrue: [self error: 'no token specified'].
	
	^ Token