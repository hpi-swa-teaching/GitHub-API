http methods
get: aQueryParameterDictionary

	
	(self allowedMethods includes: 'query') ifFalse: [self error: 'Queried get not allowed!'].

	self checkParameters: aQueryParameterDictionary forRequirements: self queryParameters.
	
	^ self performGetRequest: self baseURL , self path , (self encodeQueryParameters: aQueryParameterDictionary)
	
	