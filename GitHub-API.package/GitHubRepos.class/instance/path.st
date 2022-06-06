accessing
path

	self isAuthorizedUser
		ifTrue: [^ '/user/repos']
		ifFalse: [^ '/users/' , self username , '/repos']