http methods
get: queryParametersDictionary

	| client response |
	
	(self queryParameters isEmpty) ifTrue: [self error: 'Get with query parameters not allowed!'].
	
	self checkParameters: queryParametersDictionary forRequirements: self queryParameters.
	client := WebClient new.
	
	response := client
		httpGet: self baseURL , self path , (self encodeQueryParameters: queryParametersDictionary)
		do: self setHeader.
	
	^ self handleResponse: response