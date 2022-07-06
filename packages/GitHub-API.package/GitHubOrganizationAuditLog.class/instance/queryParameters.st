parameters
queryParameters

	^ Dictionary newFrom: {
		'phrase' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'include' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'web' . 'git' . 'all'}
		}).
		'after' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'before' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'desc' . 'asc'}
		}).
		'order' -> (Dictionary newFrom: {
			'type' -> Integer
		}).
		'per_page' ->  (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1.
			'maxValue' -> 100
		})
	}