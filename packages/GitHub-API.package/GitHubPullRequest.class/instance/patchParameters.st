parameters
patchParameters

	^ Dictionary newFrom: {
		'title' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'body' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'state' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'open' . 'closed'}
		}).
		'maintainer_can_modify' -> (Dictionary newFrom: {
			'type' -> Boolean
		})
	}