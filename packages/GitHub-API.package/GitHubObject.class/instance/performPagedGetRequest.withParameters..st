http methods
performPagedGetRequest: aUrl withParameters: aQueryParameterDictionary

	| page response result keyNumber newResult|

	page := 1.
	result := OrderedCollection new.
	keyNumber := 0.
	
	(aQueryParameterDictionary includesKey: 'per_page')
		ifFalse: [aQueryParameterDictionary at: 'per_page' put: self listPerPage].
	
	[(result size) < self listMaxSize] whileTrue: [
		aQueryParameterDictionary at: 'page' put: page.
		
		response := self 
			performGetRequest: aUrl , (self encodeQueryParameters: aQueryParameterDictionary).
		
		newResult := self buildResultFragment: result forResponse: response.
		
		(newResult at: 2)
			ifTrue: [^ newResult at: 1]
			ifFalse: [result = (newResult at: 1)].
		
		page := page + 1].

	^ result