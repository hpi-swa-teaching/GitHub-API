checks
checkConstraints: aParameter
	
	| value requirement |
	
	value := parameters at: aParameter.
	requirement := requirements at: aParameter.
	
	(value isKindOf: String) ifTrue: [
		(requirement includesKey: 'matches') 
			ifTrue: [((requirement at: 'matches') includes: value)
			ifFalse: [self error: 'Unknown option ' , value asString , ' for parameter ' , aParameter]]].
	
	(value isKindOf: Integer) ifTrue: [
		(requirement includesKey: 'minValue') 
			ifTrue: [(value >= (requirement at: 'minValue'))
			ifFalse: [self error: 'Value ' , value asString , ' is too small for parameter ' , aParameter]].
	
		(requirement includesKey: 'maxValue') 
			ifTrue: [((value) <= (requirement at: 'maxValue'))
			ifFalse: [self error: 'Value ' , value asString , ' is too large for parameter ' , aParameter]]]
	
	
		
	