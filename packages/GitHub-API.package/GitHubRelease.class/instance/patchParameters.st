parameters
patchParameters

	^ Dictionary newFrom: {
		'tag_name' -> (Dictionary newFrom: {
			'type' -> String
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
		})
	}