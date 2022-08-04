accessing
setUp

	|requirements|
	
	requirements := (Dictionary newFrom: {
		'integer' -> (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 1.
			'maxValue' -> 10
		}).
		'string' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'sample1' . 'sample2'}
		}).
		'mixed' -> (Dictionary newFrom: {
			'type' -> {String . Integer}.
			'matches' -> {'sample1' . 'sample2'}
		})
	}).
	
	self gitHubParameterChecker: GitHubParameterChecker new.
	self gitHubParameterChecker
		requirements: requirements