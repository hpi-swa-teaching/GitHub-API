http methods
search: aSearchParameterDictionary

	(self allowedMethods includes: 'search')
		ifFalse: [self error: 'Search not allowed!'].
	
	self checkParameters: aSearchParameterDictionary forRequirements: self searchParameters.

	^ self performPagedGetRequest: self baseURL , self path withParameters: aSearchParameterDictionary