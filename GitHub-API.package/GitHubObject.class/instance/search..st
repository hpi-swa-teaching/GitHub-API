http methods
search: searchParameterDictionary

	| page response result |
	
	(self isSearchObject and: [self allowedMethods includes: 'search']) 
		ifFalse: [self error: 'Search not allowed!'].
		
	self checkParameters: searchParameterDictionary forRequirements: self searchParameters.	

	page := 1.
	response := Dictionary new.
	result := OrderedCollection new.
	
	(searchParameterDictionary includesKey: 'per_page')
		ifFalse: [searchParameterDictionary at: 'per_page' put: self listPerPage].
	
	[true and: [(result size) < self listMaxSize]] whileTrue: [
		searchParameterDictionary at: 'page' put: page.
		response := self 
			performGetRequest: self baseURL , self path , (self encodeQueryParameters: searchParameterDictionary).
		(response at: 'items') size = 0 ifTrue: [^ result].
		(response at: 'items') do: [:res | 
			result add: res.
		].
		page := page + 1
	].

	^ result