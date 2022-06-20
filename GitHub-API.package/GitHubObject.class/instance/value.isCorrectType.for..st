parameter checks
value: aValue isCorrectType: aRequirementType for: aParameter

	(aValue isKindOf: aRequirementType) 
		ifFalse: [self error: 'Wrong data type ' , aValue class asString , ' for parameter ' , aParameter , '!'].