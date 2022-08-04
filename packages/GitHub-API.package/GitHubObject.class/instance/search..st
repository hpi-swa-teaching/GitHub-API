http methods
search: aSearchParameterDictionary

	| parameterChecker |
	
	(self allowedMethods includes: 'search')
		ifFalse: [self error: 'Search not allowed!'].
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aSearchParameterDictionary;
		requirements: self searchParameters.
		
	parameterChecker check.	

	^ self performPagedGetRequest: self baseURL , self path withParameters: aSearchParameterDictionary