helper
getReleaseId

	| release |
	
	(self releaseIdentifier isKindOf: Number)
		ifTrue: [^ self releaseIdentifier].
		
	release := self get.
			
	^ release at: 'id'