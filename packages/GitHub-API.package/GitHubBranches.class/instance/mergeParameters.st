parameters
mergeParameters

	^ Dictionary newFrom: {
		'base' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		}).
		'head' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		}).
		'commit_message' -> (Dictionary newFrom: {
			'type' -> String
		})
	}