http methods
search: searchParameterDictionary

	(self isSearchObject and: [self allowedMethods includes: 'search']) 
		ifFalse: [self error: 'Search not allowed!'].
		
	self checkParameters: searchParameterDictionary forRequirements: self searchParameters.	

	^ self performPagedGetRequest: self baseURL , self path withParameters: searchParameterDictionary