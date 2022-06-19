http methods
list

	(self allowedMethods includes: 'list') 
		ifFalse: [self error: 'Llist not allowed!'].

	^ self performPagedGetRequest: self baseURL , self path
	