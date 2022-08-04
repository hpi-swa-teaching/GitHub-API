http methods
get

	(self allowedMethods includes: 'get') 
		ifFalse: [self error: 'Get not allowed!'].
	
	^ self performGetRequest: self baseURL , self path