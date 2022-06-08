helper
checkParameters: paramsDict forRequirements: requirementsDict
	
	paramsDict keysAndValuesDo: [:parameter :value |
		| requirement requirementType |
		
		(requirementsDict includesKey: parameter) ifFalse: [self error: 'Unknown parameter ' , parameter].
		
		requirement := requirementsDict at: parameter.
		requirementType := requirement at: 'type'.
		
		(value isKindOf: requirementType) 
			ifFalse: [self error: 'Wrong data type ' , value class asString , ' for parameter ' , parameter , '!'].
		
		(requirement includesKey: 'minValue') 
			ifTrue: [(value >= (requirement at: 'minValue'))
				ifFalse: [self error: 'Value ' , value asString , ' is too small for parameter ' , parameter]].
		
		(requirement includesKey: 'maxValue') 
			ifTrue: [((value) <= (requirement at: 'maxValue'))
					ifFalse: [self error: 'Value ' , value asString , ' is too large for parameter ' , parameter]].
			
		(requirement includesKey: 'matches') 
			ifTrue: [((requirement at: 'matches') includes: value)
				ifFalse: [self error: 'Unknown option ' , value asString , ' for parameter ' , parameter]].
		].
	
	self checkRequiredParameters: paramsDict forRequirements: requirementsDict.
	
	^ true