checks
checkRequiredParameters

	| requiredParameters |
	
	requiredParameters := self findRequiredParameters.
	
	requiredParameters do: [:parameter |
			(parameters includesKey: parameter) 
				ifFalse: [self error: 'Missing required parameter ' , parameter]].