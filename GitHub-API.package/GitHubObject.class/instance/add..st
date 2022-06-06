http methods
add: postParameterDictionary

	| client response |
	
	self checkParameters: postParameterDictionary forRequirements: self postParameters.
	client := WebClient new.
	
	response := client
		httpPost: self baseURL , self path
		content: (JsonObject newFrom: postParameterDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.
	
	^ self handleResponse: response