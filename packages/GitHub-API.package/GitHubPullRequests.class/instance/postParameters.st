parameters
postParameters

	^ Dictionary newFrom: {
		'title' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'head' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		}).
		'base' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		}).
		'body' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'maintainer_can_modify' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'draft' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'issue' -> (Dictionary newFrom: {
			'type' -> Integer
		})
	}