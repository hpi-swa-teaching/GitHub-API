parameters
queryParameters

	^ Dictionary newFrom: {
		'state' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'open' . 'closed' . 'all'}
		}).
		'head' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'base' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'sort' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'created' . 'updated' . 'popularity' . 'long-running'}
		}).
		'direction' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'asc' . 'desc'}
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