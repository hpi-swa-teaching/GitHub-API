http methods
merge: aMergeParameterDictionary

	| client response |
	
	self checkParameters: aMergeParameterDictionary forRequirements: self mergeParameters.
	client := WebClient new.
	
	response := client
		httpPost: self baseURL , '/repos/' , self owner , '/' , self reponame , '/merges'
		content: (JsonObject newFrom: aMergeParameterDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.

	^ self handleResponse: response