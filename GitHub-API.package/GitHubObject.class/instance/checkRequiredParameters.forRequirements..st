helper
checkRequiredParameters: aParameterDictionary forRequirements: aRequirementDictionary

	| requiredParameters |
	requiredParameters := OrderedCollection new.
	
	aRequirementDictionary keysAndValuesDo: [:parameter : value |
		(value includesKey: 'required')
			ifTrue: [((value at: 'required') = true)
					ifTrue: [requiredParameters add: parameter]]].
	
	
	requiredParameters do: [:parameter |
			(aParameterDictionary includesKey: parameter) ifFalse: [self error: 'Missing required parameter ' , parameter]].
	
	^ true