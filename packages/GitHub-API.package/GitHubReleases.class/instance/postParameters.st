parameters
postParameters

	^ Dictionary newFrom: {
		'tag_name' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true
		}).
		'target_commitish' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'name' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'body' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'draft' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'prerelease' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'discussion_category_name' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'generate_release_notes' -> (Dictionary newFrom: {
			'type' -> Boolean
		})
	}