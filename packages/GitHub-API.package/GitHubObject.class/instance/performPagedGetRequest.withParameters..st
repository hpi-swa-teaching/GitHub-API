http methods
performPagedGetRequest: aUrl withParameters: aQueryParameterDictionary

	| page response result keyNum |

	page := 1.
	response := Dictionary new.
	result := OrderedCollection new.
	keyNum := 0.
	
	(aQueryParameterDictionary includesKey: 'per_page')
		ifFalse: [aQueryParameterDictionary at: 'per_page' put: self listPerPage].
	
	[true and: [(result size) < self listMaxSize]] whileTrue: [
		aQueryParameterDictionary at: 'page' put: page.
		response := self 
			performGetRequest: aUrl , (self encodeQueryParameters: aQueryParameterDictionary).
		
		((response isKindOf: Dictionary) and: [response includesKey: 'items'])
			ifTrue: [
				"search request"
				(response at: 'items') size = 0 ifTrue: [^ result].
				(response at: 'items') do: [:res | 
				result add: res]]
			ifFalse: [
				"list request"
				response size = 0 ifTrue: [^ result].
				response do: [:res | 
				result add: res]].
		page := page + 1
	].

	^ result