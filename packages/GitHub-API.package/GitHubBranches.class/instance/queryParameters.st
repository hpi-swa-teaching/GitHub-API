parameters
queryParameters

	^ Dictionary newFrom: {
		'protected' -> (Dictionary newFrom: {
			'type' -> Boolean
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