helper
checkRequiredParameters: aParameterDictionary forRequirements: aRequirementDictionary

	| requiredParameters |
	
	requiredParameters := self findRequirementsIn: aRequirementDictionary.
	
	requiredParameters do: [:parameter |
			(aParameterDictionary includesKey: parameter) ifFalse: [self error: 'Missing required parameter ' , parameter]].
	
	^ true