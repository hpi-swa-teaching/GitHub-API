http methods
remove: aUsername

	| result |
	
	result := self performDeleteRequest: self baseURL , self path , '/' , aUsername.
	
	^ result