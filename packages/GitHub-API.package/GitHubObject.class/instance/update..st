http methods
update: anUpdateParameterDictionary

	| client response |
	
	(self allowedMethods includes: 'update') ifFalse: [self error: 'Update not allowed!'].
	
	self checkParameters: anUpdateParameterDictionary forRequirements: self patchParameters.
	client := WebClient new.
	
	response := client
		httpPatch: self baseURL , (self path)
		content: (JsonObject newFrom: anUpdateParameterDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.

	^ self handleResponse: response