parameters
queryParameters

	^ Dictionary newFrom: {
		'milestone' -> (Dictionary newFrom: {
			'type' -> String.
		}).
		'state' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'open' . 'closed' . 'all'}
		}).
		'assignee' -> (Dictionary newFrom: {
			'type' -> String.
		}).
		'creator' -> (Dictionary newFrom: {
			'type' -> String.
		}).
		'mentioned' -> (Dictionary newFrom: {
			'type' -> Array.
		}).
		'labels' -> (Dictionary newFrom: {
			'type' -> Array.
		}).
		'sort' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'created' . 'updated' . 'comments'}
		}).
		'direction' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'asc' . 'desc'}
		}).
		'since' -> (Dictionary newFrom: {
			'type' -> Array.
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