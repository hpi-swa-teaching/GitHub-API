parameters
searchParameters

	^ Dictionary newFrom: {
		'q' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true.
		}).
		'sort' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'stars' . 'forks' . 'help-wanted-issues' . 'updated'}.
		}).
		'order' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'desc' . 'asc'}.
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