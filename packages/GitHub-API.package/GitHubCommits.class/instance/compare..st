http methods
compare: aCompareParameterDictionary

	self checkParameters: aCompareParameterDictionary forRequirements: self compareParameters.
	
	^ self performGetRequest:  
			self baseURL , '/repos/' , self owner , '/' , self reponame , '/compare/' , ((aCompareParameterDictionary at: 'base') , '...' , (aCompareParameterDictionary at: 'head')) 