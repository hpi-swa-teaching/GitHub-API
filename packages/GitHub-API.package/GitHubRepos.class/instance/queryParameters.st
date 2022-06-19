parameters
queryParameters

	^ Dictionary newFrom: {
		'type' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'all' . 'owner' . 'member'}
		}).
		'sort' ->  (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'created' . 'updated' . 'pushed' . 'full_name'}
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