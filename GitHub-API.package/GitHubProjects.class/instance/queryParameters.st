parameters
queryParameters

	^ Dictionary newFrom: {
		'state' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'open' . 'closed' . 'all'}
		}).
		'per_page' ->  (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1.
			'maxValue' -> 100.
		}).
		'page' ->  (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1.
		})
	}