methods
merge: aMergeParameterDictionary

	| result |
	
	self checkParameters: aMergeParameterDictionary forRequirements: self putParameters.
	
	self path: self path , '/merge'.
	result := self performPatchRequest: self baseURL , self path withData: aMergeParameterDictionary.
	self path: nil.
	
	^ result
	