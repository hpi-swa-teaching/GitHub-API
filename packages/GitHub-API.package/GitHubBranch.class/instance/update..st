http methods
update: anUpdateParameterDictionary

	| client response |
	
	self checkParameters: anUpdateParameterDictionary forRequirements: self patchParameters.
	client := WebClient new.
	
	response := client
		httpPost: self baseURL , (self path) , '/rename'
		content: (JsonObject newFrom: anUpdateParameterDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.

	^ self handleResponse: response