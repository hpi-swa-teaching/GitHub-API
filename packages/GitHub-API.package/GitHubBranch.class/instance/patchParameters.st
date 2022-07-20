parameters
patchParameters

	^ Dictionary newFrom: {
		'new_name' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		})
	}