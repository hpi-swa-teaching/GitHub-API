http methods
list

	(self allowedMethods includes: 'list') 
		ifFalse: [self error: 'List not allowed!'].

	^ self performPagedGetRequest: self baseURL , self path
	