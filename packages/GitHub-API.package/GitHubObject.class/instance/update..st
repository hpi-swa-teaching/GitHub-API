http methods
update: anUpdateParameterDictionary

	| client response parameterChecker |
	
	(self allowedMethods includes: 'update') ifFalse: [self error: 'Update not allowed!'].
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: anUpdateParameterDictionary;
		requirements: self patchParameters.
		
	parameterChecker check.
	
	client := WebClient new.
	
	response := client
		httpPatch: self baseURL , (self path)
		content: (JsonObject newFrom: anUpdateParameterDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.

	^ self handleResponse: response