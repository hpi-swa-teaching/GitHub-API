http methods
list: aQueryParameterDictionary

	| parameterChecker |
	
	((self allowedMethods includes: 'list') and: (self allowedMethods includes: 'query'))
		ifFalse: [self error: 'Queried list not allowed!'].
		
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aQueryParameterDictionary;
		requirements: self queryParameters.
		
	parameterChecker check.
	
	^ self performPagedGetRequest: self baseURL , self path withParameters: aQueryParameterDictionary
	