parameters
queryParameters

	^ Dictionary newFrom: {
		'since' -> (Dictionary newFrom: {
			'type' -> Integer
		}).
		'per_page' ->  (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1.
			'maxValue' -> 100
		}).
		'page' ->  (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1
		})
	}