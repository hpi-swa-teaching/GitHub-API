http methods
create: aPostParameterDictionary
	
	| parameterChecker |
	
	(self allowedMethods includes: 'create') 
		ifFalse: [self error: 'Create not allowed!'].
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aPostParameterDictionary;
		requirements: self postParameters.
		
	parameterChecker check.
	
	^ self performPostRequest: (self baseURL , self path) withData: aPostParameterDictionary