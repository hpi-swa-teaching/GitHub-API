parameters
queryParameters

	^ Dictionary newFrom: {
		'path' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'author' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'since' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'until' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'per_page' -> (Dictionary newFrom: {
			'type' -> Integer.
			'maxValue' -> 100.
			'minValue' -> 1
		}).
		'page' -> (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1
		})
	}