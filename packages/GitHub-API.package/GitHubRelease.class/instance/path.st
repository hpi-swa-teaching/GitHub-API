accessing
path

	^ path ifNil: [
			(self releaseIdentifier isKindOf: Number)
				ifTrue: [path := '/repos/' , self owner , '/' , self reponame , '/releases/' , self releaseIdentifier]
				ifFalse: [
					(self releaseIdentifier isKindOf: String)
						ifTrue: [
							(releaseIdentifier = 'latest')
								ifTrue: [path := '/repos/' , self owner , '/' , self reponame , '/releases/latest']
								ifFalse: [path := '/repos/' , self owner , '/' , self reponame , '/releases/tags/' , self releaseIdentifier]	
						]
				]
		]