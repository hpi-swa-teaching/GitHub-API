accessing
path

	(self isSearchObject) ifTrue: [^ '/search/repositories'].
	
	((self apiUser username) = (self owner))
		ifTrue: [^ '/user/repos']
		ifFalse: [^ '/users/' , self owner , '/repos']