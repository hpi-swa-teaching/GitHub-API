accessing
path

	self isAuthorizedUser
		ifTrue: [^ '/user']
		ifFalse: [^ '/users/' , self username]