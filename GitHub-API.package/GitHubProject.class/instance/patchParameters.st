parameters
patchParameters

	^ Dictionary newFrom: {
		'name' -> (Dictionary newFrom: {
			'type' -> String.
		}).
		'body' -> (Dictionary newFrom: {
			'type' -> String.
		}).
		'state' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'open' . 'closed'}.
		}).
		'organization_permission' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'read'. 'write' . 'admin' . 'none'}.
		}).
		'private' -> (Dictionary newFrom: {
			'type' -> Boolean.
		}).
	}