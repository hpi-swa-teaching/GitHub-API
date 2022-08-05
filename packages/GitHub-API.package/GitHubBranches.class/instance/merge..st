http methods
merge: aMergeParameterDictionary
	
	self checkParameters: aMergeParameterDictionary forRequirements: self mergeParameters.
	
	^ self performPostRequest:  self baseURL , '/repos/' , self owner , '/' , self reponame , '/merges' 
			withData: aMergeParameterDictionary