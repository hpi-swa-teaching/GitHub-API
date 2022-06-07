parameters
patchParameters

	^ Dictionary newFrom: {
		'note' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true.		
		}).
		'archived' -> (Dictionary newFrom: {
			'type' -> Boolean.
		})
	}