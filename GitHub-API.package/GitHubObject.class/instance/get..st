http methods
get: queryParametersDictionary

	
	(self allowedMethods includes: 'query') ifFalse: [self error: 'Queried get not allowed!'].

	self checkParameters: queryParametersDictionary forRequirements: self queryParameters.
	^ self performGetRequest: self baseURL , self path , (self encodeQueryParameters: queryParametersDictionary)
	
	