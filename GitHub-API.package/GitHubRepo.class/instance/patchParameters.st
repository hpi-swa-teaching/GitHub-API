accessing
patchParameters

	^ Dictionary newFrom: {
		'name' -> (Dictionary newFrom: {
			'type' -> String.
		}).
		'description' ->  (Dictionary newFrom: {
			'type' -> String.
		}).
		'homepage' -> (Dictionary newFrom: {
			'type' -> String.
		}).
		'private' -> (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'visibility' ->  (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'public' . 'private' . 'internal'}
		}).
		'has_issues' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'has_projects' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'has_wiki' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'is_template' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'default_branch' ->  (Dictionary newFrom: {
			'type' -> String.
		}).
		'allow_squash_merge' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'allow_merge_commit' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'allow_rebase_merge' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'allow_auto_merge' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'delete_branch_on_merge' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'archived' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		}).
		'allow_forking' ->  (Dictionary newFrom: {
			'type' -> Boolean.
		})}