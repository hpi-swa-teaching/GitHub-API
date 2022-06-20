helper
findRequirementsIn: aRequirementDictionary

	| requiredParameters |
	
	requiredParameters := OrderedCollection new.
	
	aRequirementDictionary keysAndValuesDo: [:parameter : value |
		(value includesKey: 'required')
			ifTrue: [((value at: 'required') = true)
					ifTrue: [requiredParameters add: parameter]]].
			
	^ requiredParameters