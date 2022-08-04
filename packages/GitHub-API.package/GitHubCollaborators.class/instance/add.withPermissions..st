http methods
add: aUsername withPermissions: aPermissionDictionary

	| parameterChecker |
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aPermissionDictionary;
		requirements: self postParameters.
		
	parameterChecker check.
	
	^ self performPutRequest: self baseURL , self path , '/' , aUsername withData: aPermissionDictionary.