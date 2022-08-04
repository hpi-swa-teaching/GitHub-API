http methods
update: anUpdateParameterDictionary

	| parameterChecker |
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: anUpdateParameterDictionary;
		requirements: self patchParameters.
		
	parameterChecker check.
	
	^ self performPostRequest: self baseURL , self path , '/rename' withData: anUpdateParameterDictionary.