helper
checkParameters: aParameterDictionary forRequirements: aRequirementDictionary
	
	aParameterDictionary keysAndValuesDo: [:parameter :value | self checkParameter: parameter withValue: value forRequirements: aRequirementDictionary].
	
	self checkRequiredParameters: aParameterDictionary forRequirements: aRequirementDictionary.
	
	^ true