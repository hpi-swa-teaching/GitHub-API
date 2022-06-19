accessing
path

	((self apiUser username) = (self username))
		ifTrue: [^ '/user']
		ifFalse: [^ '/users/' , self username]