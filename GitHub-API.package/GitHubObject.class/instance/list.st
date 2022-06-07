http methods
list

	| page response result keyNum queryParameters |
	
	(self allowedMethods includes: 'list') ifFalse: [self error: 'List not allowed!'].
	
	page := 1.
	response := Dictionary new.
	result := Dictionary new.
	keyNum := 0.
	queryParameters := Dictionary new.
	queryParameters at: 'per_page' put: 100.
	
	[true] whileTrue: [
		queryParameters at: 'page' put: page.
		response := self performGetRequest: self baseURL , self path , (self encodeQueryParameters: queryParameters).
		response size = 0 ifTrue: [^ result].
		response do: [
			:res | result at: keyNum put: res.
			keyNum := keyNum + 1
		].
		page := page + 1
	]
	