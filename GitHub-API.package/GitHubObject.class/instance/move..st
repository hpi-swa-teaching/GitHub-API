http methods
move: moveParameterDictionary

	
	(self allowedMethods includes: 'move') ifFalse: [self error: 'Move not allowed!'].
	self checkParameters: moveParameterDictionary forRequirements: self moveParameters.
	
	^ self performPostRequest: self baseURL , self path , '/moves' withData: moveParameterDictionary