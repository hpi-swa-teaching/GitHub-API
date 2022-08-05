http methods
performPagedGetRequest: aUrl withParameters: aQueryParameterDictionary

	| page response result keyNumber newResult|

	page := 1.
	result := OrderedCollection new.
	keyNumber := 0.
	
	(aQueryParameterDictionary includesKey: 'per_page')
		ifFalse: [aQueryParameterDictionary at: 'per_page' put: self listPerPage].
	
	"keep track of received items"
	[(result size) < self listMaxSize] whileTrue: [
		"set the page"
		aQueryParameterDictionary at: 'page' put: page.
		
		"get the page"
		response := self 
			performGetRequest: aUrl , (self encodeQueryParameters: aQueryParameterDictionary).
		
		"result gets appended in each iteration"
		newResult := self buildResultFragment: result forResponse: response.
		
		"check if there are more items to be get or if we've already received all of them"
		(newResult at: 2)
			ifTrue: [^ newResult at: 1]
			ifFalse: [result = (newResult at: 1)].
		
		page := page + 1].

	^ result