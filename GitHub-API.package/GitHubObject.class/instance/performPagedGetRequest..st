http methods
performPagedGetRequest: aUrl

	^ self performPagedGetRequest: aUrl withParameters: (Dictionary new)