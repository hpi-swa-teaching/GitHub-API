http methods
delete

	(self allowedMethods includes: 'delete') 
		ifFalse: [self error: 'Delete not allowed!'].
	
	^ self performDeleteRequest: (self baseURL , self path)