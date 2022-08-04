http methods
compare: aCompareParameterDictionary
	
	| parameterChecker |
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aCompareParameterDictionary;
		requirements: self compareParameters.
		
	parameterChecker check.
	
	^ self performGetRequest:  
		self baseURL , '/repos/' , self owner , '/' , self reponame , '/compare/' , 			((aCompareParameterDictionary at: 'base') , '...' , (aCompareParameterDictionary at: 'head')) 