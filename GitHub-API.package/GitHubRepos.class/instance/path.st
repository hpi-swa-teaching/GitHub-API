accessing
path

	((self apiUser username) = (self owner))
		ifTrue: [^ '/user/repos']
		ifFalse: [^ '/users/' , self owner , '/repos']