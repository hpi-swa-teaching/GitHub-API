http methods
merge: aMergeParameterDictionary
	
	| parameterChecker |
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aMergeParameterDictionary;
		requirements: self mergeParameters.
		
	parameterChecker check.
	
	^ self performPostRequest:  self baseURL , '/repos/' , self owner , '/' , self reponame , '/merges' 
			withData: aMergeParameterDictionary