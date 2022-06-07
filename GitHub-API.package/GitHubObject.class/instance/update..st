http methods
update: updateParameterDictionary

	| client response |
	
	(self allowedMethods includes: 'update') ifFalse: [self error: 'Update not allowed!'].
	
	self checkParameters: updateParameterDictionary forRequirements: self patchParameters.
	client := WebClient new.
	
	response := client
		httpPatch: self baseURL , (self path)
		content: (JsonObject newFrom: updateParameterDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.

	^ self handleResponse: response