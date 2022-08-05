http methods
remove: aUsername
	
	^ self performDeleteRequest: self baseURL , self path , '/' , aUsername.