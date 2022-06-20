helper
checkParameter: aParameter withValue: aValue forRequirements: aRequirementDictionary

	| requirement requirementType |
		
	(aRequirementDictionary includesKey: aParameter) ifFalse: [self error: 'Unknown parameter ' , aParameter].
	
	requirement := aRequirementDictionary at: aParameter.
	requirementType := requirement at: 'type'.
	
	self value: aValue isCorrectType: requirementType for: aParameter.
	
	self checkConstraintsOf: requirement for: aValue asParameter: aParameter.