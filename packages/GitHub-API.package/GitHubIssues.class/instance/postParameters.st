parameters
postParameters

	^ Dictionary newFrom: {
		'title' -> (Dictionary newFrom: {
			'type' -> {String . Integer}.
			'required' -> true
		}).
		'body' -> (Dictionary newFrom: {
			'type' -> String
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