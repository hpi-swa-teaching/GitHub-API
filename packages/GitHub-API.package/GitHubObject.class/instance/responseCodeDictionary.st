defaults
responseCodeDictionary

	"	(code = 200) ifTrue: [^ STONJSON fromStream: aWebResponse content readStream].
	(code = 201) ifTrue: [^ true].
	(code = 304) ifTrue: [^ self error: 'Not modified'].
	(code = 401) ifTrue: [^ self error: 'Requires authentication'].
	(code = 403) ifTrue: [^ self error: 'Forbidden'].
	(code = 404) ifTrue: [^ self error: 'Ressource not found'].
	(code = 410) ifTrue: [^ self error: 'Gone'].
	(code = 422) ifTrue: [^ self error: 'Validation failed'].
	(code = 204) ifTrue: [^ true]."
	
	| responseCodeDictionary |
	
	responseCodeDictionary := Dictionary new.
	
	responseCodeDictionary at: 200 put: [:aWebResponse | 
		| lastModified json |
		lastModified := aWebResponse headerAt: 'last-modified' ifAbsent: nil.
		json := STONJSON fromStream: aWebResponse content readStream. 
		lastModified ifNotNil: [json at: 'last_modified' put: lastModified].
		
		json].
	responseCodeDictionary at: 201 put: [:aWebResponse | true].
	responseCodeDictionary at: 204 put: [:aWebResponse | true].
	responseCodeDictionary at: 304 put: [:aWebResponse | self error: 'Not modified'].
	responseCodeDictionary at: 401 put: [:aWebResponse | self error: 'Requires authentication'].
	responseCodeDictionary at: 403 put: [:aWebResponse | self error: 'Forbidden'].
	responseCodeDictionary at: 404 put: [:aWebResponse | self error: 'Ressource not found'].
	responseCodeDictionary at: 410 put: [:aWebResponse | self error: 'Gone'].
	responseCodeDictionary at: 422 put: [:aWebResponse | self error: 'Validation failed'].
	
	^ responseCodeDictionary