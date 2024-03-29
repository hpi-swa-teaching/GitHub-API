checks
checkType: aParameter

	| value requirement requirementType |
	
	value := parameters at: aParameter.
	requirement := requirements at: aParameter.
	requirementType := requirement at: 'type'.
	
	requirementType isArray
		ifTrue: [
			((requirementType size) > 0)
				ifTrue: [
					"multiple types allowed"
					(requirementType detect: [:type | value isKindOf: type]) 
						ifNil: [self error:  'Wrong data type ' , value class asString , ' for parameter ' , aParameter , '!']]
					
				ifFalse: [
					"type of array"
					(value isKindOf: Array) 
						ifFalse: [self error:  'Wrong data type ' , value class asString , ' for parameter ' , aParameter , '!']]]
		ifFalse: [
			"single type"
			(value isKindOf: requirementType)
				ifFalse: [self error: 'Wrong data type ' , value class asString , ' for parameter ' , aParameter , '!']]