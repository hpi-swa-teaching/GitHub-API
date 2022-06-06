accessing
postParameters

	^ Dictionary newFrom: {
		'name' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true.
		}).
		'body' -> (Dictionary newFrom: {
			'type' -> String.
		})
	}