http methods
getAll

	| page response result keyNum |
	
	(self queryParameters includesKey: 'page') ifFalse: [self error: 'Get all not allowed!'].
	
	page := 1.
	response := Dictionary new.
	result := Dictionary new.
	keyNum := 0.
	
	[true] whileTrue: [
		response := self get: (Dictionary newFrom: {'per_page' -> 100. 'page' -> page}) .
		response size = 0 ifTrue: [^ result].
		response do: [
			:res | result at: keyNum put: res.
			keyNum := keyNum + 1
		].
		page := page + 1
	]
	