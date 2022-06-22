http methods
list: queryParametersDictionary

	
	((self allowedMethods includes: 'list') and: (self allowedMethods includes: 'query'))
		ifFalse: [self error: 'Queried list not allowed!'].
		
	self checkParameters: queryParametersDictionary forRequirements: self queryParameters.
	
	^ self performPagedGetRequest: self baseURL , self path withParameters: queryParametersDictionary
	