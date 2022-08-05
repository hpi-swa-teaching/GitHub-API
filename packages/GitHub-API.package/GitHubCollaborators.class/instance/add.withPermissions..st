http methods
add: aUsername withPermissions: aPermissionDictionary

	self checkParameters: aPermissionDictionary forRequirements: self postParameters.
	
	^ self performPutRequest: self baseURL , self path , '/' , aUsername withData: aPermissionDictionary.