parameters
bodyParameters

	^ Dictionary newFrom: {
		'permission' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'pull' . 'push' . 'admin' . 'maintain' . 'triage'}
		})
	}