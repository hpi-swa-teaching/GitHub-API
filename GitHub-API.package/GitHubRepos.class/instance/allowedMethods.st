parameters
allowedMethods

	(self isSearchObject) ifTrue: [^ {'search'}].

	(self apiUser username = self owner)
		ifTrue: [^ {'get' . 'list' . 'create' . 'query'}]
		ifFalse: [^{'get' . 'list' . 'query'}]