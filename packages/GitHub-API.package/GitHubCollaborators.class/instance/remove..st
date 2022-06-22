http methods
remove: aUsername

	| result |
	
	self path: self path , '/' , aUsername.
	result := self performDeleteRequest: self baseURL , self path.
	self path: nil.
	
	^ result