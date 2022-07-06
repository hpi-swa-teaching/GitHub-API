http methods
add: aUsername

	| result |
	"adjust path to add a collaborator"
	self path: self path , '/' , aUsername.
	result := self performPutRequest: self baseURL , self path withData: (Dictionary new).
	"reset path after collaborator is added"
	self path: nil.
	
	^ result