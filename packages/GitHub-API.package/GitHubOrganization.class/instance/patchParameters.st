parameters
patchParameters

	^ Dictionary newFrom: {
		'billing_email' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'company' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'email' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'twitter_username' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'location' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'name' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'description' -> (Dictionary newFrom: {
			'type' -> String
		}).
		'has_organization_projects' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'has_repository_projects' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'default_repository_permission' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'read' . 'write' . 'admin' . 'none'}
		}).
		'members_can_create_repositories' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'members_can_create_internal_repositories' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'members_can_create_private_repositories' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'members_can_create_public_repositories' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'members_allowed_repository_creation_type' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'all' . 'private' . 'none'}
		}).
		'members_can_create_pages' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'members_can_create_public_pages' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'members_can_create_private_pages' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'members_can_fork_private_repositories' -> (Dictionary newFrom: {
			'type' -> Boolean
		}).
		'blog' -> (Dictionary newFrom: {
			'type' -> String
		})
	}