requestsHttp
performPagedGetRequest: aURL

	| page response result keyNum |
	page := self defaultPage.
	response := Dictionary new.
	result := Dictionary new.
	keyNum := 0.
	
	[true] whileTrue: [
		response := self performGetRequest: aURL, '?per_page=', self defaultPageSize asString, '&page=', page asString.
		response size = 0 ifTrue: [^ result].
		response do: [
			:res | result at: keyNum put: res.
			keyNum := keyNum + 1
		].
		page := page + 1
	]
	