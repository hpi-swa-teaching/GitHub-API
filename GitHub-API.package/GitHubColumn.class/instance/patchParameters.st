accessing
patchParameters

	^ Dictionary newFrom: {
		'name' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true.
		})
	}