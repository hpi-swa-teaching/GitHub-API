http methods
get: aQueryParameterDictionary

	| parameterChecker |
	
	(self allowedMethods includes: 'query') ifFalse: [self error: 'Queried get not allowed!'].
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aQueryParameterDictionary;
		requirements: self queryParameters.
		
	parameterChecker check.
	
	^ self performGetRequest: self baseURL , self path , (self encodeQueryParameters: aQueryParameterDictionary)
	
	