http methods
add: aUsername withPermissions: aPermissionDictionary

	| result |
	
	self checkParameters: aPermissionDictionary forRequirements: self postParameters.
	
	"adjust path to add a collaborator"
	self path: self path , '/' , aUsername.
	result := self performPutRequest: self baseURL , self path withData: aPermissionDictionary.
	"reset path after collaborator is added"
	self path: nil.
	
	^ result