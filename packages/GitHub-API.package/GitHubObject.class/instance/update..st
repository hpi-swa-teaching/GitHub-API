http methods
update: anUpdateParameterDictionary

	| parameterChecker |
	
	(self allowedMethods includes: 'update') ifFalse: [self error: 'Update not allowed!'].
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: anUpdateParameterDictionary;
		requirements: self patchParameters.
		
	parameterChecker check.
	
	^ self performPatchRequest: self baseURL, self path withData: anUpdateParameterDictionary