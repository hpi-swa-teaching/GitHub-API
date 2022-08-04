accessing
path

	^ self username 
			ifNil: [^ '/organizations']
			ifNotNil: [
				(apiUser username = self username)
					ifTrue: [^ '/user/orgs']
					ifFalse: [^ '/users/' , self username , '/orgs']
			]