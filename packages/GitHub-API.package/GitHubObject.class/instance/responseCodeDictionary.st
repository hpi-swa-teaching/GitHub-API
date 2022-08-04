defaults
responseCodeDictionary

	| responseCodeDictionary |
	
	responseCodeDictionary := Dictionary new.
	
	responseCodeDictionary at: 200 put: [:aWebResponse | self handle200: aWebResponse].
	responseCodeDictionary at: 201 put: [:aWebResponse | true].
	responseCodeDictionary at: 204 put: [:aWebResponse | true].
	responseCodeDictionary at: 304 put: [:aWebResponse | self error: 'Not modified'].
	responseCodeDictionary at: 401 put: [:aWebResponse | self error: 'Requires authentication'].
	responseCodeDictionary at: 403 put: [:aWebResponse | self error: 'Forbidden'].
	responseCodeDictionary at: 404 put: [:aWebResponse | self error: 'Ressource not found'].
	responseCodeDictionary at: 410 put: [:aWebResponse | self error: 'Gone'].
	responseCodeDictionary at: 422 put: [:aWebResponse | self error: 'Validation failed'].
	
	^ responseCodeDictionary