helper
getReleaseId

	(self releaseIdentifier isKindOf: Number)
		ifTrue: [^ self releaseIdentifier]
		ifFalse: [
			| release |
			release := self get.
			^ release at: 'id'
		].