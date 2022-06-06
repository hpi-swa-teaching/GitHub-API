accessing
postParameters

	^ Dictionary newFrom: {
		'note' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true.
		}).
	}