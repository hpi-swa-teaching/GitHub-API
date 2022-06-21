http methods
handleResponse: aWebResponse

	| code |
	
	code := aWebResponse code.
	
	^ (self responseCodeDictionary includesKey: code) 
		ifTrue: [(self responseCodeDictionary at: code) value: aWebResponse]
		ifFalse: [self error: code].
	
	
	
	