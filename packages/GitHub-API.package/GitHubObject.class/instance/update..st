http methods
update: anUpdateParameterDictionary

	(self allowedMethods includes: 'update') ifFalse: [self error: 'Update not allowed!'].
	
	self checkParameters: anUpdateParameterDictionary forRequirements: self patchParameters.
	
	^ self performPatchRequest: self baseURL, self path withData: anUpdateParameterDictionary