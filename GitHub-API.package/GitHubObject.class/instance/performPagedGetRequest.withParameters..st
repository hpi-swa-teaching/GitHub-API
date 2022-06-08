http methods
performPagedGetRequest: aUrl withParameters: queryParametersDictionary

	| page response result keyNum |

	page := 1.
	response := Dictionary new.
	result := OrderedCollection new..
	keyNum := 0.
	
	(queryParametersDictionary includesKey: 'per_page')
		ifFalse: [queryParametersDictionary at: 'per_page' put: self listPerPage].
	
	[true and: [(result size) < self listMaxSize]] whileTrue: [
		queryParametersDictionary at: 'page' put: page.
		response := self 
			performGetRequest: aUrl , (self encodeQueryParameters: queryParametersDictionary).
		response size = 0 ifTrue: [^ result].
		response do: [:res | 
			result add: res.
			keyNum := keyNum + 1
		].
		page := page + 1
	].

	^ result