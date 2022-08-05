http methods
move: aMoveParameterDictionary

	(self allowedMethods includes: 'move') ifFalse: [self error: 'Move not allowed!'].
	
	self checkParameters: aMoveParameterDictionary forRequirements: self moveParameters.
	
	^ self performPostRequest: self baseURL , self path , '/moves' withData: aMoveParameterDictionary