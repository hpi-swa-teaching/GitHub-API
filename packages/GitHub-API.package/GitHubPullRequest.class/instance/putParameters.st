parameters
putParameters

	^ Dictionary newFrom: {
		'commit_title' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'commit_message' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'sha' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'merge_method' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'merge' . 'squash' . 'rebase'}
		})
	}