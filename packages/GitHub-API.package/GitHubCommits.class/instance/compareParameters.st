parameters
compareParameters

	^ Dictionary newFrom: {
		'base' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		}).
		'head' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		})
	}