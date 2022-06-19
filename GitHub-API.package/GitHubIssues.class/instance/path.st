accessing
path

	(self reponame isNil and: (self apiUser username = self owner))
		ifTrue: [^ '/user/issues']
		ifFalse: [^ '/repos/' , self owner , '/' , self reponame , '/issues']