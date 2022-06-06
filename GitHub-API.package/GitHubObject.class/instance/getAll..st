http methods
getAll: queryParametersDictionary

	| page response result keyNum |
	
	(self queryParameters includesKey: 'page') ifFalse: [self error: 'Get all not allowed!'].
	self checkParameters: queryParametersDictionary forRequirements: self queryParameters.
	
	page := 1.
	response := Dictionary new.
	result := Dictionary new.
	keyNum := 0.
	
	(queryParametersDictionary includesKey: 'per_page')
		ifFalse: [queryParametersDictionary at: 'per_page' put: 100].
	
	[true] whileTrue: [
		queryParametersDictionary at: 'page' put: page.
		response := self get: queryParametersDictionary.
		response size = 0 ifTrue: [^ result].
		response do: [
			:res | result at: keyNum put: res.
			keyNum := keyNum + 1
		].
		page := page + 1
	]
	