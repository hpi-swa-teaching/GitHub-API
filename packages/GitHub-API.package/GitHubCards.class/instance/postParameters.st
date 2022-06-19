parameters
postParameters

	^ Dictionary newFrom: {
		'note' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		}).
		'content_id' -> (Dictionary newFrom: {
			'type' -> Integer
		}).
		'content_type' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'Issue' . 'PullRequest'}
		})
	}