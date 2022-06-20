helper
checkParameter: aParameter withValue: aValue forRequirements: aRequirementDictionary

	| requirement requirementType |
		
	(aRequirementDictionary includesKey: aParameter) ifFalse: [self error: 'Unknown parameter ' , aParameter].
	
	requirement := aRequirementDictionary at: aParameter.
	requirementType := requirement at: 'type'.
	
	(aValue isKindOf: requirementType) 
		ifFalse: [self error: 'Wrong data type ' , aValue class asString , ' for parameter ' , aParameter , '!'].
	
	(requirement includesKey: 'minValue') 
		ifTrue: [(aValue >= (requirement at: 'minValue'))
			ifFalse: [self error: 'Value ' , aValue asString , ' is too small for parameter ' , aParameter]].
	
	(requirement includesKey: 'maxValue') 
		ifTrue: [((aValue) <= (requirement at: 'maxValue'))
				ifFalse: [self error: 'Value ' , aValue asString , ' is too large for parameter ' , aParameter]].
		
	(requirement includesKey: 'matches') 
		ifTrue: [((requirement at: 'matches') includes: aValue)
			ifFalse: [self error: 'Unknown option ' , aValue asString , ' for parameter ' , aParameter]].