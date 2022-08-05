http methods
list: aQueryParameterDictionary
	
	((self allowedMethods includes: 'list') and: (self allowedMethods includes: 'query'))
		ifFalse: [self error: 'Queried list not allowed!'].
	
	self checkParameters: aQueryParameterDictionary forRequirements: self queryParameters.
	
	^ self performPagedGetRequest: self baseURL , self path withParameters: aQueryParameterDictionary
	