parameters
allowedMethods

	(self apiUser username = self owner)
		ifTrue: [^ {'get' . 'list' . 'create' . 'query'}]
		ifFalse: [^{'get' . 'list' . 'query'}]