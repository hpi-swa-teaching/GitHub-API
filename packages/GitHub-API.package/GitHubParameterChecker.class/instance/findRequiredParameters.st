helper
findRequiredParameters
	
	| requiredParameters |
	
	requiredParameters := OrderedCollection new.
	
	requirements keysAndValuesDo: [:parameter : value |
		(value includesKey: 'required')
			ifTrue: [((value at: 'required') = true)
					ifTrue: [requiredParameters add: parameter]]].
			
	^ requiredParameters