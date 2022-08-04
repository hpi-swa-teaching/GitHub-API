methods
merge: aMergeParameterDictionary

	| parameterChecker |
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aMergeParameterDictionary;
		requirements: self putParameters.
		
	parameterChecker check.
	
	^ self performPatchRequest: self baseURL , self path , '/merge' withData: aMergeParameterDictionary.
	