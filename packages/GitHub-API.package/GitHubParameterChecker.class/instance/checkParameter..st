checks
checkParameter: aParameter
		
	(requirements includesKey: aParameter) 
		ifFalse: [self error: 'Unknown parameter ' , aParameter].
	
	self checkType: aParameter.
	self checkConstraints: aParameter
	
	