methods
merge: aMergeParameterDictionary

	"merge the pull request"

	self checkParameters: aMergeParameterDictionary forRequirements: self putParameters.
	
	^ self performPatchRequest: self baseURL , self path , '/merge' withData: aMergeParameterDictionary.
	