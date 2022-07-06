http methods
remove: aUsername

	| result |
	"adjust path to add a collaborator"
	self path: self path , '/' , aUsername.
	result := self performDeleteRequest:  self baseURL , self path.
	"reset path after collaborator is added"
	self path: nil.
	
	^ result