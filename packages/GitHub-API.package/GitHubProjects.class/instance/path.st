accessing
path

	self isRepoProject
		ifTrue: [^ '/repos/' , self owner , '/' , self reponame , '/projects']
		ifFalse: [^ '/users/' , self owner , '/projects']