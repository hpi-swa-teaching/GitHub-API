http methods
update: anUpdateParameterDictionary

	self checkParameters: anUpdateParameterDictionary forRequirements: self patchParameters.
	
	^ self performPostRequest: self baseURL , self path , '/rename' withData: anUpdateParameterDictionary.