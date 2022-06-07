http methods
create: postParameterDictionary

	(self allowedMethods includes: 'create') ifFalse: [self error: 'Create not allowed!'].
	self checkParameters: postParameterDictionary forRequirements: self postParameters.
	
	^ self performPostRequest: (self baseURL , self path) withData: postParameterDictionary