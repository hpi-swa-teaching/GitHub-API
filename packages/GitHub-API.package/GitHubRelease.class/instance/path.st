accessing
path

	^ (self releaseIdentifier isKindOf: Number)
			"identify release by id"
			ifTrue: [^ '/repos/' , self owner , '/' , self reponame , '/releases/' , self releaseIdentifier]
			"identify release by tag"
			ifFalse: [
				(self releaseIdentifier isKindOf: String)
					ifTrue: [
						(releaseIdentifier = 'latest')
							"latest release"
							ifTrue: [^ '/repos/' , self owner , '/' , self reponame , '/releases/latest']
							"identify release by specific tag"
							ifFalse: [^ '/repos/' , self owner , '/' , self reponame , '/releases/tags/' , self releaseIdentifier]	
					]
			]