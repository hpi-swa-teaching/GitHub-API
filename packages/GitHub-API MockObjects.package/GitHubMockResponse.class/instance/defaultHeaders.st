defaults
defaultHeaders

	^ OrderedCollection newFrom: {
			'server' -> 'test.com'.
			'content-type'->'application/json; charset=utf-8'.
	}