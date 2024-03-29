parameters
patchParameters

	^ Dictionary newFrom: {
		'title' -> (Dictionary newFrom: {
			'type' -> {String . Integer}
		}).
		'body' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'state' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'open' . 'closed'}
		}).
		'assignee' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'milestone' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'labels' -> (Dictionary newFrom: {
			'type' -> Array
		}).
		'assignees' -> (Dictionary newFrom: {
			'type' -> Array
		})
	}