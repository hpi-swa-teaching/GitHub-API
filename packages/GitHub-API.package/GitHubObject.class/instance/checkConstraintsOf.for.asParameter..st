parameter checks
checkConstraintsOf: aRequirement for: aValue asParameter: aParameter

	(aRequirement includesKey: 'minValue') 
		ifTrue: [(aValue >= (aRequirement at: 'minValue'))
			ifFalse: [self error: 'Value ' , aValue asString , ' is too small for parameter ' , aParameter]].
	
	(aRequirement includesKey: 'maxValue') 
		ifTrue: [((aValue) <= (aRequirement at: 'maxValue'))
				ifFalse: [self error: 'Value ' , aValue asString , ' is too large for parameter ' , aParameter]].
		
	(aRequirement includesKey: 'matches') 
		ifTrue: [((aRequirement at: 'matches') includes: aValue)
			ifFalse: [self error: 'Unknown option ' , aValue asString , ' for parameter ' , aParameter]].