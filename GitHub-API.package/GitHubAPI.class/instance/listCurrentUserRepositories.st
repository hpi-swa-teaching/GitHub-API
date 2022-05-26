requestsAPI
listCurrentUserRepositories

	^ self performGetRequest: 'https://api.github.com/user/repos'