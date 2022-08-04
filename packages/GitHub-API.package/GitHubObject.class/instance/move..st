http methods
move: aMoveParameterDictionary

	| parameterChecker |
	
	(self allowedMethods includes: 'move') ifFalse: [self error: 'Move not allowed!'].
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aMoveParameterDictionary;
		requirements: self moveParameters.
		
	parameterChecker check.
	
	^ self performPostRequest: self baseURL , self path , '/moves' withData: aMoveParameterDictionary