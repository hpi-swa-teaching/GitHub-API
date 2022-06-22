parameters
queryParameters

	^ Dictionary newFrom: {
		'affiliation' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'outside' . 'direct' . 'all'}			
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