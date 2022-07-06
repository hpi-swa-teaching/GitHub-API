accessing
path

	^ path ifNil: [
			self username 
				ifNil: [path := '/organizations']
				ifNotNil: [
					(apiUser username = self username)
						ifTrue: ['/user/orgs']
						ifFalse: ['/users/' , self username , '/orgs']
				]
		]