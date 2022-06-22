parameters
queryParameters

	^ Dictionary newFrom: {
		'archived_state' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'all' . 'archived' . 'not_archived'}.	
		}).
		'per_page' -> (Dictionary newFrom: {
			'type' -> Integer.
			'maxValue' -> 100.
			'minValue' -> 1.
		}).
		'page' -> (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1.
		})
	}