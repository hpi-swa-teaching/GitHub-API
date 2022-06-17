http methods
handleResponse: response

	| code |
	
	code := response code.
	
	(code = 200) ifTrue: [^ STONJSON fromStream: response content readStream].
	(code = 201) ifTrue: [^ true].
	(code = 304) ifTrue: [^ self error: 'Not modified'].
	(code = 401) ifTrue: [^ self error: 'Requires authentication'].
	(code = 403) ifTrue: [^ self error: 'Forbidden'].
	(code = 404) ifTrue: [^ self error: 'Ressource not found'].
	(code = 410) ifTrue: [^ self error: 'Gone'].
	(code = 422) ifTrue: [^ self error: 'Validation failed'].
	(code = 204) ifTrue: [^ true].
	
	^ code
	
	