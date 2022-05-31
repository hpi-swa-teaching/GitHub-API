requestsAPI
listCurrentUserIssues

	^ self performPagedGetRequest: 'https://api.github.com/user/issues'