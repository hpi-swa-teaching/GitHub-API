http methods
create: aPostParameterDictionary
	
	(self allowedMethods includes: 'create') 
		ifFalse: [self error: 'Create not allowed!'].
	
	self checkParameters: aPostParameterDictionary forRequirements: self postParameters.
	
	^ self performPostRequest: (self baseURL , self path) withData: aPostParameterDictionary