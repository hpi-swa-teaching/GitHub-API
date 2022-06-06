helper
checkRequiredParameters: parametersDict forRequirements: requirementsDict

	| requiredParameters |
	requiredParameters := OrderedCollection new.
	
	requirementsDict keysAndValuesDo: [:parameter : value |
		(value includesKey: 'required')
			ifTrue: [((value at: 'required') = true)
					ifTrue: [requiredParameters add: parameter]]].
	
	
	requiredParameters do: [:parameter |
			(parametersDict includesKey: parameter) ifFalse: [self error: 'Missing required parameter ' , parameter]].
	
	^ true